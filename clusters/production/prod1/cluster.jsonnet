{

  // contains metadata about the cluster
  // this can be used elsewhere in params for components
  _cluster+: {
    tier: 'prod',
    region_name: 'sfo2',
    cluster_name: 'prod1',
    cluster_type: 'digitalocean',
    dns_domain: 'prod1.briggs.work',
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
      CF_API_EMAIL: 'AgCPsgXECf1UyzkP6W5z0nbVKcjemUCVkq0Krgejw/tVZFCBlboFJV69P1Xoelv0AXWe8O8D66FCnY0m/1xyfnF2rT+ijCrQUFcXCEJ1f5BYTC74cD55Ot4WcoiSsEfUHbLoJ3edMGA8Em2uJh+YBcxqmW1zySC2kGY5ussChph0M2FPwClqfE/1ABO13JX9yOxOty5cyKz2Kcs4tcM4R5TwW+3Lm2z9etwCtQNiE5rkXuvhoNE+2/10pZHx1je1CgXhS47+tZQXKAUTvLKTny+qmm/x8tPKM/qcvYniGdHRuokCv5Idcq7tOfsBSGLY31lW/SAZ91XsWl+oYd4R1bXOcUaSTg0M8Gl9I0V0k06njMZs/b0xtVfZJW5P7ygl7JPqMENAPKMPDiuoj2XjP2APFn1A3dv18YN0Xw6usZ2EUjyjODUoLd7JCREkAGdkChr9DMagAJcRjQ43KBJ7+899+dnIbnChLhHoLFaPzgmrqJ70enXna0AvnyTObUYPOWNBnN4Lmy3BvXXGpJQH/L9fcUrpuF0qhbmWyHIfEjCjzkpqtwEWWFAx/f3M56N5ou+9wZ7xRxTwisz4SYanYGn4disHfF9o2Pgm75u/kN+M2IM08Fusl2vD/hR9xFWOefWbWttpl6C76A8XFRs4HopFyZ/rMcjRIgUBuYyvJ+jLjbd3t1NrVOS10qBBaCtkzyAHRVdZ1GZhUPoZaHzeA14TS/li',
      CF_API_KEY: 'AgBuemBSahzMuvwoGzU158OzFv63Ksa0dZ67pgPn0h/SxU8hyWVVXnop9fFOCyxWa4+2WFjX05QDrXc98GSI2OtWxfwEkqFNLBPAcaXDTqZj+DUE+InigmmYi55xmoCG/kF5vyihLg06bWNQavdaVRTrh0MUK7C3i7E5L35jFFCLOfq+4N+MDP3RYQMUPRHDr3v3tlopP8Q8dkqt+6e2Cr2coHCXE/wvn7UUrKsEzs83TjXVM24paYyr42ICeDa1/WLwow/fqxG1PvuVzd+bWG9YsH3CfH7db202TNQGdCesunjMs0bb9LLBQW6aNZTGQT5gNC7TcSjun/mSnZiD5x5zs3Xi2uKlyTslF6ZLAkEZXkFMO7FaYDmB/JRxAcC+TaNWjEg6V1bEE8igtBHZ8KkNXwn333yCb3iPkf+LFjKiXb3TtVaEbo3fkj+uqSdhV9la0M7N0bytqTW4xEPt5NrKPJuzklM6u6E0bPtpljcDe/SOc1/WlFY+jGgjI/nht2NiPDW3N9QF1aUeZibMfulEtta9QyGk6kYUPT+E0Cvb4M/M9oT8Y55P0jguvbi35Ozp+BwqOC/tcIzi7vPC3BIxJOw4J5tUcrwBxoBDlStYrvdYi8zMJeM+eSbCJGlcrAONUMDoPSfZHg4Rfjk6G7NJb42heaZWW/FJ/ks5Rq6oLQgZjugUo3B7M3aZ02ltziTojkxs4NwgoNqBiawVTwaFI4VIhaAw9atZVvZOWG43rJjmd+7c',
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
