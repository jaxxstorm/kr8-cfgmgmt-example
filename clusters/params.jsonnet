{

  // this is the global cluster params class
  // we declare metadata here, but use jsonnet's error clause to ensure it's set
  // this needs to be overriden at the cluster level
  // we are essentially making these parameters mandatory to all clusters below here
  _cluster: {
    cluster_name: error '"cluster_name" must be set to the cluster name',
    cluster_type: error '"cluster_type" must be set to the cluster type',
    region_name: error '"region_name" must be set to the region name',
    tier: error '"tier" must be set to the tier name eg: dev/prod',

    aws_region: if $._cluster.cluster_type == 'aws' then error 'aws_region must be set for aws clusters' else null,
  },


  // declaring a component here means all cluster below this will get this component
  // you can still override the parameters as the cluster or tier level
  _components: {
    nginx_ingress: { path: 'components/nginx_ingress' },
  },

  pharos+: {
    gitrepo: 'https://github.com/jaxxstorm/kr8-cfgmgmt-example',
  },


}
