{

  // contains metadata about the cluster
  // this can be used elsewhere in params for components
  _cluster+: {
    tier: 'dev',
    region_name: 'sfo21',
    cluster_name: 'dev1',
    cluster_type: 'digitalocean',
    dns_domain: 'dev.lbrlabs.com',
  },

  // these are the components you want in the cluster
  // declaring them here tells kr8 you want to install them
  // you declare them in the format: name: { path: 'filesystem_path' },
  _components+: {
    sealed_secrets: { path: 'components/sealed_secrets' },
    external_dns: { path: 'components/external_dns' },
  },


  // this is configuration for the above components
  // you override the default params in the component here
  // the name needs to match the name of the declared component
  external_dns+: {
    extraEnv: {
      CF_API_EMAIL: 'AgCeD+6cW4VUpKX3WSIbaF9yc5Ah2zyCTVP9981jEqPDZQAvcwmBPpGWWkHqg2xGlL85syrCS6qWwIrpiMeNQl2KtIvw3g47287ZMz/uHTRVeY+MxuSNiFxjCIJ6FZXpgkpR5ZBGjFNJYHh+ObhAAxdRMaPt2+LAHtlY+pzMRGLEMSZWj5Oloty+ey3hj9soPcOeImUXE2P/Jgk9/T/jpzzEvYu9H2GW+9qQMNK9bm5U5YcmKUmA8Ill62oWzwesFWvF2wVRUIY8lf4mPKOrV5s2mKN9O4+WgYIIC72IsgurpWuzF8HrS2BRbQKjDfNbSn8uhwxHEkEr1CN67JJHAYwviNTiXbAzGqypu5PrSIyOMnIN0GEDpDeEboJMRrkS+xGSHyOTUrpM7YNEpIZyCZZTY8w2Nf17oVUfM0Ak2HRCrynoQdoq+C9MwICRe3Zl9N4uJINyKVEKj7gw3cPoL55YFYiwXchkpVAMXLgzpsn1TDpB0rWfj4Rn9DX59ydSdMtVfXtMRPl/gxYVxL+0/oiv3IUdAaTMnWkN9JuXRKc+mAaV40O7wbHBQWmhaAG8FvEPTW1pTpvq06oZ6M8x+I2deiJKHxHFz/Ymb6+H6o3xdwC2ZwGg6v7eT7PdDW+kSNM0TzLhQcLPl2cwwQAhsrTPMyNzdJQOnXsLyEEuHCfrv6x6//YikwLbqD3PUV4w1rBTrUvH1rde59fFXn9/jncXNbm5',
      CF_API_KEY: 'AgC+gcAaF65KwmhYvMrqzGD+eTdFweOdNbdQPGJR3MspxXWkxTnzTbimu7wFKHs1HCtjGV/Nf1sUIAZxFasy4X6hethFNyf58piuq/LIW2cRTQY/yxjjzxWxRcsiaCZolmXexk34GliLyPVmTFHJYxYT+HmFA1dwKSp9Ezxm14RvoBDcI+baAtoo77l/JGa+FFwQHT1IjqCPalHGTlQkX+7FPJEz7bLevPAxehIDi0OPdKPadr0WFAdTJenKyLii/u6cYge5E/ju7DTJ36Ni/QdYkKt8/eCrMgkfjco6OWeZRkkSHx9J5KUIWAjTz8ceYY+/ki1PgehqAwcRH8jGmdRerbve3MtGa+lxnKVFgSOR0MUqscrINhYb4cOIbUzv5jqz/DvLG131YO5FFHviKgScy6OmCaATKSsi4OCOraipZ0+pbWbkvrIlIHhHCpn7IpGnn5gEp1ntrKga3M/KQTvi9HF808cLa7sWam+pnPFLxy3P0iZPfk6Q6r27t7xF5POGySU7Yw631uLaO63/P7hcfmR6nNhAWibOJpndek4QZHB1M+4wdStbpB+am2qrV+Yk40WOcKkLy5qWu1pGC/YGx9By7JhALfISfmzSognnkXAFsCa+cGdZhlls45nB/l7OFWbl2u1XDbMSiCrwqnIzSshlXpZRpHf23mtQkeEoZpzM8R74c/tBbYXeq90nbuZC2hYBCFV1WrpvwH/UY8fV+futYubePwLAdJYI3VNNKXh7bPCk',
    },

    provider: 'cloudflare',
    txtPrefix: 'dev1',
    txtOwnerId: 'dev1-',
    domainFilters: [
      'briggs.work',
      // lbrlabs.com
    ],
    tolerateMasters: false,
  },


}
