{

  // contains metadata about the cluster
  // this can be used elsewhere in params for components
  _cluster+: {
    tier: 'dev',
    region_name: 'ams1',
    cluster_name: 'dev1',
    cluster_type: 'digitalocean',
    dns_domain: 'dev.lbrlabs.com',
  },

  // these are the components you want in the cluster
  // declaring them here tells kr8 you want to install them
  // you declare them in the format: name: { path: 'filesystem_path' },
  _components+: {
    sealed_secrets: { path: 'components/sealed_secrets' },
    // external_dns: { path: 'components/external_dns' },
  },


  // this is configuration for the above components
  // you override the default params in the component here
  // the name needs to match the name of the declared component
  /*
  external_dns+: {
    extraEnv: {
      CF_API_KEY: 'AgCnv+KXBHifRcoW23DuSGYt8zxQGevOQMYKskwec+iMkwOQveGfsLNdHEkBYB9WuyCXv6N7zCnpoNCG//LniOpMNBPjc81XXNp9Lht8iARy6AObZE9uosPaMSNMsluleZNVREhBTZTVTnak1YPIGXhJ7xU2MPiZvd428Ioy4nXCmc0QO/rElQiAyIXZS9yksbCkQzETgWjRQ5Z0/Bb+pg1PTQapeHTmDMmhjGvFfLHa5ooszmP1Az6a3LDty5jBB68P+v58Eb0BOo14drMJtan00pPQPIrZrqVS1eF2IsUNos+lmnusqk6CABVq+ufjQDfUdpaigNY1FKWqbUCmQUJ8o2s3hS8xAPE/FW3GvTt6FEqoalUWI9Jsa6u22WQnvv5dv6qMTWUIxSaJlV9rClKpFYgsJRqZSLrnuJTyHlVOuCAW1ww9EgUbhzDVrVgu851m/g19T+B6/p4Z/9aZTGBiSeHfjhlxiY07fkIyD1kZMcWqz/Pmfy6ijqBVESZEyMKxj2o3howcWe+la0uwBDslu+u/QRPwdRBM9mVNMYY5QehfGpqBed+LaDeSBidY0wv5jIpJ95XzgE+cSbX3phbfRb3wJv0eyPkNVqvAaT2wCj3fHw3XUYTV0NIgrPWwIj9Q0KYpIcYfklo3wgvwhCOlEsQu4giRDvN3yd8T7q4VCChwkBecAtm0BBfPIqcAuEiw2lRrQiA100XpB03ErKyDvnSmxF5RyKznetNEr956Eo6dlt1Z\n',
      CF_API_EMAIL: 'AgAjSixNHhquaklvETS/36AvTU+isJ1nGFXLCMBdzGoQvSWie9MoxPVLZWYd1ZRamE0YCWE1R0c37js65EoWrgghRqCmRlG+uwgD0p91JgrO1ZnZslBLH1f6hmzZA0onW1AuuvJd35KxOMl1SJyw+3wIhNC1ahR2kzizVWRmZt3wEtqrB3TE54n7J/V2E6rPgmpQm6U7HTp2L87y2qonZv4eE/8K2DTdfV0RA2yC63zij+VnzUAwpWR3UVochzukqTTL+U5ZEDxOqwpBIEv24bPjpIgyFYTUyqATevE1hvpnAA+FNDEGM1+5IpsRSXxVJSrkEUR/QghbBaSehvs0v759thRPO0R1xemtn3ZUTXeUTsZatM/JO9lL2JrQ9nFHqWzvyqxqhz/BCRWb6A5dsSHmgzymMOX4ZFduxDoEuhfU37qqzYQlLJEjYjtfTJDBAJvPwyCUBwSNScQHcn+UbDY/IeyaOaO+YRJAwwQDfKuUcNc0NjhRhn6E4YupiMAz+LEmriHVXuo4NvSsPb44W4EfEH2voniK6UyKPDHpCjXkE9CZAdJR9mR9DbfE2PR85DB8AoMb/ymXGWzBgKWPR/rEW46v4UpCUKuJpozpzdy6RmlvmkRRJnBl8JX3p5GF/j73xntCWruH1gZb0N6N7I0bFN6SdWDDehB0sh1G6ZE9cRVnyhAmAfzZ4RFExJbIvqfPF29dUO4+rq2wc6RlHT6Jeim7\n',
    },

    provider: 'cloudflare',
    txtPrefix: 'dev1',
    txtOwnerId: 'dev1-',
    domainFilters: [
      'briggs.work',
    ],
    tolerateMasters: false,
  },
  */


}
