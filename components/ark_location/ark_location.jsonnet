local kube = import 'kube.libsonnet';
local config = std.extVar('kr8');
local kr8_cluster = std.extVar('kr8_cluster');

kube.objectValues(
  {
    BackupStorageLocation: {
      apiVersion: 'ark.heptio.com/v1',
      kind: 'BackupStorageLocation',
      metadata: {
        name: config.backup_name,
        namespace: config.namespace,
      },
      spec: {
        provider: config.cloud_provider,
        objectStorage: {
          bucket: config.bucket_name,
          prefix: config.prefix,
        },
        [if std.objectHas(config, 'backup_config') then 'config']: config.backup_config,
      },
    },
  } +
  {
    VolumeSnapshotLocation: {
      apiVersion: 'ark.heptio.com/v1',
      kind: 'VolumeSnapshotLocation',
      metadata: {
        name: config.volume_name,
        namespace: config.namespace,
      },
      spec: {
        provider: config.volume_provider,
        [if std.objectHas(config, 'volume_config') then 'config']: config.volume_config,
      },
    },
  },
)
