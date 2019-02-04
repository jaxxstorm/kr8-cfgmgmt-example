local helpers = import 'helpers.libsonnet';
local kube = import 'kube.libsonnet';
local kr8_cluster = std.extVar('kr8_cluster');
local parseYaml = std.native('parseYaml');
local config = std.extVar('kr8');

[
  object
  for object in helpers.list(
    helpers.named(parseYaml(std.extVar('inputGuestbook'))) {}
  )
] + [
local ingressName = config.release_name + '-ingress';
kube.Ingress(ingressName) {
  metadata+: {
    annotations+: {
      'kubernetes.io/ingress.class': config.ingress_class,
      'kubernetes.io/tls-acme': 'true',
      'ingress.kubernetes.io/ssl-redirect': 'true',
      'ingress.kubernetes.io/allow-http': 'true',
    },
  },
  spec: {
    tls: [
      {
      hosts: [
        config.url,
      ],
      secretName: config.release_name + '-tls',
      },
    ],
    rules: [
      {
        host: config.url,
          http: {
            paths: [{
              backend: {
                serviceName: 'frontend',
                servicePort: 80,
              },
              path: '/',
            }],
         },
      },
    ],
  },
},
]
