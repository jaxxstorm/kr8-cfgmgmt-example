{

  // Production gets the same configuration for all clusters
  _components+: {
    // external_dns: { path: 'components/external_dns' },
  },

  external_dns+: {
    provider: 'cloudflare',
    domainFilters: [
      'lbrlabs.com',
      'kr8.rocks',
    ],
    tolerateMasters: false,
  },
}
