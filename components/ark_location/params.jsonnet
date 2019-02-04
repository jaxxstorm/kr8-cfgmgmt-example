{
  local c = self,
  namespace: 'heptio-ark',
  backup_name: c.release_name,
  volume_name: c.release_name,
  release_name: 'ark-location',
  kubecfg_gc_enable: false,
  cloud_provider: std.format('%s', $._cluster.cluster_type),
  volume_provider: std.format('%s', $._cluster.cluster_type),
  bucket_name: '',  //error 'Must specify a bucket name',
  prefix: std.format('%s', $._cluster.cluster_name),
  backup_config: '',
  volume_config: '',
}
