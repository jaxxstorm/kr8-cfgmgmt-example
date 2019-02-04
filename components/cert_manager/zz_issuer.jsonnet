local helpers = import 'helpers.libsonnet';
local kube = import 'kube.libsonnet';
local kr8_cluster = std.extVar('kr8_cluster');
local parseYaml = std.native('parseYaml');
local config = std.extVar('kr8');
local issuerYaml = parseYaml(std.extVar('inputIssuer'));

kube.objectValues(
{
  Issuer: {
    apiVersion: 'certmanager.k8s.io/v1alpha1',
    kind: 'ClusterIssuer',
    metadata: {
      name: 'letsencrypt',
    },
    spec: {
      acme: {
        email: config.acme.email,
        server: 'https://acme-v02.api.letsencrypt.org/directory',
        privateKeySecretRef: {
          name: 'letsencrypt',
        },
        http01: {},
      },
    },
  },
}
)
