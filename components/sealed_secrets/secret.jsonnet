local kube = import 'kube.libsonnet';
local config = std.extVar('kr8');
local kr8_cluster = std.extVar('kr8_cluster');

kube.objectValues(
{
  key: {
    apiVersion: 'v1',
    data: {
      'tls.key': config.tls_key,
      'tls.crt': config.tls_cert,
    },
    kind: 'Secret',
    metadata: {
      namespace: config.namespace,
      name: 'sealed-secrets-key',
    },
    type: 'kubernetes.io/tls',

  },
}
)
