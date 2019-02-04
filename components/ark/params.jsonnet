{
  namespace: 'heptio-ark',
  release_name: 'ark',
  iam_role: '',  // error 'Must specify an IAM role',
  version: 'v0.10.0',
  digitalocean_token: null,
  cloud_credentials: '',
  cloudprovider: std.format('%s', $._cluster.cluster_type),
  /*
  region: std.format('%s', $._cluster.region_name),
  bucket_name: error 'Must specify a bucket name',
  */
}
