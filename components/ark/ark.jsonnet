local helpers = import 'helpers.libsonnet';
local kube = import 'kube.libsonnet';
local kr8_cluster = std.extVar('kr8_cluster');
local parseYaml = std.native('parseYaml');
local config = std.extVar('kr8');

[
  object
  for object in helpers.list(
    helpers.named(parseYaml(std.extVar('inputArk'))) {
      ['Deployment/%s/ark' % config.namespace]+:
        helpers.patchContainerNamed(
          'ark', {
            image: 'gcr.io/heptio-images/ark:%s' % config.version,
            [if std.objectHas(config, 'digitalocean_token') then 'args']+: [
              '--default-volume-snapshot-locations=digitalocean-blockstore:default',
            ],
            volumeMounts+: [
              {
                name: 'cloud-credentials',
                mountPath: '/credentials',
              },
            ],
            [if kr8_cluster.cluster_type == 'digitalocean' then 'env']+: [
              {
                name: 'AWS_SHARED_CREDENTIALS_FILE',
                value: '/credentials/cloud',
              },
              {
                name: 'DIGITALOCEAN_TOKEN',
                valueFrom: {
                  secretKeyRef: {
                    key: 'digitalocean_token',
                    name: 'cloud-credentials',
                  },
                },
              },
            ],
            [if kr8_cluster.cluster_type == 'gke' then 'env']+: [
              {
                name: 'GOOGLE_APPLICATION_CREDENTIALS',
                value: '/credentials/cloud',
              },
            ],
          }
        ) + {
          spec+: {
            template+: {
              spec+: {
                volumes+: [
                  {
                    name: 'cloud-credentials',
                    secret: {
                      secretName: 'cloud-credentials',
                    },
                  },
                ],
                [if kr8_cluster.cluster_type == 'digitalocean' then 'initContainers']+: [
                  {
                    image: 'gcr.io/stackpoint-public/ark-blockstore-digitalocean:latest',
                    name: 'ark-blockstore-digitalocean',
                    volumeMounts: [
                      {
                        name: 'plugins',
                        mountPath: '/target',
                      },
                    ],
                  },
                ],
              },
              metadata+: {
                annotations+: if kr8_cluster.cluster_type == 'aws' then {
                  'iam.amazonaws.com/role': config.iam_role,
                } else {
                  'iam.amazonaws.com/role': null,
                },
              },
            },
          },
        },
    }
  )
]
