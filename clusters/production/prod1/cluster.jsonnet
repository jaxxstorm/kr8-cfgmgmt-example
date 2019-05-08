{

  // contains metadata about the cluster
  // this can be used elsewhere in params for components
  _cluster+: {
    tier: 'prod',
    region_name: 'ams3',
    cluster_name: 'prod1',
    cluster_type: 'digitalocean',
    dns_domain: 'kr8.rocks',
  },

  // these are the components you want in the cluster
  // declaring them here tells kr8 you want to install them
  // you declare them in the format: name: { path: 'filesystem_path' },
  _components+: {
    sealed_secrets: { path: 'components/sealed_secrets' },
    // guestbook: { path: 'components/guestbook' }, # FIXME uncomment for prod1 demo
  },


  // this is configuration for the above components
  // you override the default params in the component here
  // the name needs to match the name of the declared component
  external_dns+: {
    extraEnv: {
      CF_API_KEY: 'AgAh/lq+aoUHX/RKpIq7IZzxtN0H4A89Qe8q4EGkJ2gi17/v28LFD6Hkx5UnD4HpAduvu9ZnVpHNMdKu3zqq4TscjqDqegi2i7gNqp3JKOSCEi3M71cii942Aq3QRm9Y8Vd2AGC4TGdvH6/xuEN4h0VqbC7hqGiYkiCXimlmRb1/LY8yaLK5Uoxly3QTV1NUKSCyfpFQ7H9IsKLDK8yeqEfcMNMRPSQg1dMP02WVkiW2r+woxwWJRnUjdLPGsp/LOb9WJnSKX0MvjeQNvU4EIpfLth6wQV6fN83A+UNl371hBSLClr+A5U37Y7nieSV5kQqTNnBPBLIJzmv8GzNYhncoLLuYTGtpejP9LndO5jrW/F+XbM6vV0FM5I05Ecr+tuf0Dg3OwQQV22A6Ff3Pt9QghfwTmSzmSGGK3eoFt++ex38ii3KAe+2OI73FBfr3/0lG9vKlKlrZQsUr6qX3j0JHbwWiPkw0zJntuHXjiuKALmhJ/2EGQQzAcgFmLdwmBFkcDFvjdNe+KFvyZMt9NO7lusQJeBmaNo+5FTPkCnMMdVSr0X8mVvV3zScPORUZ5J3QVyI9N5RXDLpABQUxN8kEC/MYPNal2rM13Gmf6nNK03WwKWqOoxwyK2gNv2fUcacnWQNTBmHk9ed7SkYv3c6AlE6uLa3VCYcsIVDIjjAMxxdBbnHQLbrwQAYe7tEK8meBVSnnT+BVTD7f9VyaQPTSwN6L6Glsn/pF46vQP4wU+Dh5Ogtp',
      CF_API_EMAIL: 'AgBctcZyNam3E1SkmaejkWpHL+N6qkeIALkxr2/zgwQkHJW/hubSPAu1ypFRanaQE5FYte2lvt7lflJFK6jlY+xHegi2lD31hLbJquDX1nkENaH5w2wyuHzyT1A2IGlnsWP9lg4H27zS0O+Ge+tzKkkFxfbBHRbIREdct2vV2DTSSMI9zcP9297ov3F7oQb+FdSdbO+w/nsfc/VXFINhFVwTQK4+rm6hrX/JAAWrzypOfpA9s/DwIIg80DRJELCuEvgjF8kWwnYX0NhvqI1Pugqh9QNEubmCPNyrC9mjpD0BtoTVZeIYLrLBsCwk44lgbIbDpBWAAaSnSdHUH8Gd3AR0LAaezaoyWRJpr/ZazAmQ1BF5kRlmkJdNjzB8UNHTjgM4gZ1I9y8dhNXRwRFnQxmv45YPIRtt2pv1rmxn7RkkAFzpP4Hk25NhJnNmKNVRoW87e1w1rx4hWw4Zvi0l9bTDfQMWPULo061AIsHk+AInSYi1Ndn9yq74/CQX8C7GfP7roJcAHhtv3U3B6G0TKng2AGsKSi6ITGbJtN0n1HWowaD+KnIU9JXkDwv7XF2HRMpZg/P/U2PXG2fOlYQOspUTivNRHybxKRBtmOgpGMGBVvPJJeeUxQcu6Fwtn9pwJnreDL8txl3mkL9Q9SQmmu7j5s2IUwuhKaBATuNCb/dtTx/V523R+RpvatCM7Nl1xb8XF7Xjtj9k1BeiN24FpVa4KE7d',
    },
    txtPrefix: 'prod1',
    txtOwnerId: 'prod1-',
    // FIXME: uncomment for prod1 demo
    /*
    domainFilters: [
      'prod1.briggs.work',
    ],
    */
  },

  // FIXME: uncomment for prod1 demo
  /*
  guestbook+: {
    url: 'guestbook-1.lbrlabs.com',
  },
  */


}
