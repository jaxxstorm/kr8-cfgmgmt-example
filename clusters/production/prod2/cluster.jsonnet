{

  // contains metadata about the cluster
  // this can be used elsewhere in params for components
  _cluster+: {
    tier: 'prod',
    region_name: 'lon1',
    cluster_name: 'prod2',
    cluster_type: 'digitalocean',
    dns_domain: 'kr8.rocks',
  },

  // these are the components you want in the cluster
  // declaring them here tells kr8 you want to install them
  // you declare them in the format: name: { path: 'filesystem_path' },
  _components+: {
    sealed_secrets: { path: 'components/sealed_secrets' },
    pharos: { path: 'components/pharos' },
    // guestbook: { path: 'components/guestbook' },
  },


  // this is configuration for the above components
  // you override the default params in the component here
  // the name needs to match the name of the declared component

  external_dns+: {
    extraEnv: {
      CF_API_KEY: 'AgASFclm+Iy9+WuDrT5lYEemJkxM0/PO/hGLkb6FrlkHYKmX0CX/rLV3WLjyklNdO+HgwBVhsw+BOQ45L90fzMkGD/KB58DOIODGLiPSwsiFe3OkNvG+dNK0+jsUxzbNwI0hPhz4bPmbo+9/mKNz7WUid29P9tTDmc1h1uwYhf9XEdQWppNuv7MPGl4krD7QSPhTrQd6MBUe/R9fRyq+6wRKNWeFh/bKPu7/X6n31i3XtGenvp7Be0uGaKyz/QEoyLljggTs1k6JjAYsJ9Y34VKcEggko83ZEXR1w39rW/5dyIypeu9aCpWHz8MxUh7g8hyyE/rmeCAa2JY22jtXKxwEuhKuCWXNyKt1FJ8sX/zEAGkli35DjeoD1MV+LMlW19UcMn8VJncihkvhidJ4frmToCu8wl5UL1sIarPVgsNBcr7wDnq4CENxByj9kbdwvJ0RO/hyZFBPBsYmYXB3OM6FZgbWkTWbufaNgYOv9+kkeWryXE0DT3rQtiqYr/tqvtbEBat+0FkdUWmQErAF6VmpGXt2IDKapBv1ZhB7jmqDkWIet6B5iwT+h+AVO8LkVz5q1ICAwCp1LzYyWHB9LaVqaEEEFopcE4FCxYxSin7ZOGMptzAyAeeEkdsFaJQo9pA/XsrDeDPSW6HopZoWZFcyc+wE8WT+995XRJReYJFyAViK5iwiiMEH6eeDPwDF+Tp3uorOFDB/Vji6HxT9tU6HzOTGnIu7j1QsAcCE8wmoyRMCZeeA',
      CF_API_EMAIL: 'AgAE1qPJ5TdOD4/8eDapIZC2dCSrFDwvmCMRRkvaPSQa1c/5SmFkiyIxuBWm+RtgHcws7DM7HgEqFM0c5li/pz6J5At5ANj7pgWdtLDSB/fMeXDX4z3V29/4fR0PDnBXmKR0Ind4dh6XpCI1d0cY7e+PgMp+RrYpQ/4PxkPWGyjn3KhDITQ4N7qN0SoWbWUn12VOCdsBWI9MD7bnFUSlByhSP3aQ5Hq+pnilCeA5DBszpZV4zqqw15+jRREfh+BP28ff27lvbRGCZPQnPaxt+bQF6X2yDYQ+PT3x75eseSVlVRL2cKKgQzm1SyX0wh32alUlhWcV9Smloa6g5FlWP0YFoi/2wRlQ1ww6d/znHkH4zeNqAnHIe/Mjp+EloZlRH5E3W59iQUyDGC2nxXYwG9OfZAr3CKfhOSwZNn3KHnhwO8LgunXXMCWehcBAlBc6AoM3wFe3hGmu1oANHmSp5tx4+f77iGy5chA1PDlERiDb+301HKOVoik1cdlnjWQaU5s8t9uA/X7B4fh1luzllJ57EsE6vafsnSvF1oLi63jdiQR29Iv9oWFnc+st8pvjWA8NJ06PEZAnjtKXp32Bow1bhXLXYHoAUwloV9xkVZGxLItqmcKIlVyp7YBRTlY49gCqmxhtu9CkhKi1SDJFCjUUWfb83yWC9hvTGS0jNUUT6h5+u++jSKHmGV+US4/ZEcbY0eE07ou/621ybEnvNegtyIYd',
    },
    txtPrefix: 'prod2',
    txtOwnerId: 'prod2-',
    logLevel: 'debug',
  },

  pharos+: {
    subpath: 'generated/prod2',
  },

  /*
  guestbook+: {
    url: 'guestbook.lbrlabs.com',
  },
  */


}
