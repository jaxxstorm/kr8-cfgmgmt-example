{

  // contains metadata about the cluster
  // this can be used elsewhere in params for components
  _cluster+: {
    tier: 'prod',
    region_name: 'sgp2',
    cluster_name: 'prod2',
    cluster_type: 'digitalocean',
    dns_domain: 'prod2.briggs.work',
  },

  // these are the components you want in the cluster
  // declaring them here tells kr8 you want to install them
  // you declare them in the format: name: { path: 'filesystem_path' },
  _components+: {
    sealed_secrets: { path: 'components/sealed_secrets' },
  },


  // this is configuration for the above components
  // you override the default params in the component here
  // the name needs to match the name of the declared component

  external_dns+: {
    extraEnv: {
      CF_API_EMAIL: 'AgB2m1L3zQ8xaLXw+c2KkwtoKAeQF37baY33Sw8rX7NkJKzsWgrwoSZuCJo4759U7mXCSLoEryfSESHyD82/D++iZAazR+rMY7XCFd0OobDOtaIkm0zd19NbLVEVnAtrSyYVt8q490rWyRpxSNQ0NRtd0gCaALk4pL5lY/4cYIh2vqVCXebCSL3KjbegLSCh22V4D6+KDP7gde3ozt/l0alZQML2jtaXDNn+Xb1RHJwmU3huGtXyVXylQqBnuUz9NcLqqN68VAXUWWDz6Fo/hGejaA3ougcfSU4I1D7BCEzigp1A07LHgDwB7amXvgjTU1I8G97iYO7x8HaJPLgbOik32GvESwhYcRb/NoKC4XjsQYs8e4OpcM4J8daTYpHLpaZOyjFAETWeB8kmh6IShHTC8zRXM/MH15XD2tZwnC5Ymq4Wr6iArT1kdWOO5TUYqxBeAM+ZYhaH0EtdbT3Mm0fIWWksXUGUzhca+fn6dfORgGudszhIt6QRCoMMuYl+kMIBXxM+jYHLJT8Ot8hNxEl+GAfdCOacao2kCQ+yTjIynjkLPEI62eugR/JGpjsLSXHWcImEY9pHaNexzKxJWxExV+s5uDWGnH2QUDmRRrt79sIzucKAe3cf8jF2AXP45tRjPIgdshvlIPSXY26v3OQDf3MNYRLcJgmyJZpph11RkJCXpV9juryD+a/QZkqdxUIO3UgGuzB8UYnPlqeMfFNijfFh',
      CF_API_KEY: 'AgCC9b0O3WIfp3wj49guxgyj+YRdpyNMOPlelPI2hbRDCF2UxcC7pwZR4WzaneUgkuu241QZR+mVXM8C/HqhnIYBaAFEDUDYoh3Mvcm8GU53emxsi0XNxnVB1drHdAJzVQfOT6M3NWgxKQKTU33XXCscj9q9tenci6ytHuFU37U6vHd0nqQRIPT75YSo0vcTw8ECK1L9TjgiAoVOUMeHMup+QJGKdGyEoUYqxZSN8fywGaF+Cx0TyG5yRzoJCd5wWRjQq0NgWXPrmyZvpLLoMjrM+lwYP/tT0b9UF3kjoM7yun7/w6TbMQ+PAjhjDE0tSGPCKq+rObwjUTTS/LOfF4Gltp0TdObLAlyEjuukB64IyBOhlPH7NTKrYXWe9Y3O6He1HVGjRz66+YxgLU1+XMVnk14sfCGca7nJykKQ4qkvzlNFt3lvbI1lrYw3r1FWsEPp7BNd7VgZZU0yPcaoaxIEsWaTFVzveK4rgHFP3qsKACxD4Jv+WYOh4nOpWGCV62+rjQJ1lXyq4FaKQycE5QU44vS+LzN8IYbSqSqctywF2FyGyNIAX0Gqgmqo7THKF26jWuYsMWqUeMrT3MiTEDiKmbtc+QnRaS/XGvldDM0HDMEjOUJqen/uCHKlYSUbLY02+hjE8SUUbmQNA6SoMOSNhlJXm/7+biiOLC0t1Z0qdeU73Zu0L0EO2p1yIARIxPxfEZwHwP/+4ucvy+GcvGbUF/M9H5CqUUkmgfJ35tetTR5K411a',
    },
    txtPrefix: 'prod2',
    txtOwnerId: 'prod2-',
    logLevel: 'debug',
    // FIXME: uncomment for prod2 demo
    /*
    domainFilters: [
      'prod2.briggs.work',
    ],
    */
  },

  // FIXME: uncomment for prod2 demo
  /*
  guestbook+: {
    url: 'guestbook-2.lbrlabs.com',
  },
  */

}
