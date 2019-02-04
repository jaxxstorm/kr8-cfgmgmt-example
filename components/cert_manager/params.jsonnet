{
  release_name: 'cert-manager',  // equivalent of name used for helm install --name ...
  namespace: 'kube-system',
  kubecfg_gc_enable: true,
  acme: {
    email: error 'Must specify acme email',
  },
  dns_providers: [],
  http_providers: [],
}
