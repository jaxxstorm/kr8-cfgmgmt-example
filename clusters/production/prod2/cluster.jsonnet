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
  },


  // this is configuration for the above components
  // you override the default params in the component here
  // the name needs to match the name of the declared component

  external_dns+: {
    extraEnv: {
      CF_API_KEY: 'AgBaDUEFdz37D61v0W8PEaansQAiMavbFdxcFJGQF5dQcJnWkFGALsUPhWa2TdNCp28l/0flhJpqTioHJ4mj7bdRJlDKmPxApZhEyzxiiKNx/nBCEX+LweVVbCKP/cKQxc0GdEcfNw0MPFpUVQDdamF/1OplvPriduw8hgfctm9N65Dtbo/arlOOXJ/x0R2PNRFVkwNtx80YV0wBLx+DcMqQBBiFYtZDXOfc3f6Dqr3KAX1UjV6fVL6nhgMlOH4huawyAaa3MPdrbLFWbiVLDUqtOUYspqbTZgLc4b6QOGf5Jurxyrrwn+TbtrmS6voxY1cgDbyXkshb+5AGMtsZnAJ729WTXtL86kQMjIpgBSt3ecF3dwEnLL0PKEscNOxS/X//O5J5cFzSVtAmUQ+TF1JcNFL4Xe5Xh1JoZQ4h5LJhsYIyj4mCWHpex2FreUT03WJvTiH5SvOCnnEF3WUjPEA1iqiNuddVdF5G3BVQ2kfddfSij4pFVeaJLNbypDgmAOUpurlqjlimqiArewqpqICAqmaWWf8Rr37ARb1OAvlQI5T+KZj2i/8HlWNxnu5cfs9KOgUp8HG5n3Npj8hcyWJoMzsreQLdn3SqNyn7XxPSpFPU87O44H3gCSt8ckW9A1HwBBDqatt62SxCNg6j9lXJLspe7/eH0/kWhuyM15UUFxqvvs8FYUyfYX9eWNWw0RpMxdWGdOANduvks1fB8Hq4+8d9btMF1Yv8QZrVoPt5+9rNh/Cu',
      CF_API_EMAIL: 'AgCZHQE3KermyQyfi65TcmKzjUZ2w4l+mRYjalcW0ecVynB9VtzbHgwge0vm9c+VeZXnHVwm2i0odo/73dvJpyoqqsGzfPn2kYWjPstzJ4abPfG9eKLZy51cYcdzIfhKCIWCjTfCSOU4GS+9lVZ3rZo1qIkA/blRac+k2bLbQs9omCD4g18ngQYpqqVdvm0jw3KwLClE5R520sVLljeV+ggkZSpdw3GsrSCcUSJ1d07ALdxLMxchqZSVU37HxluEZo1fg5m9qjJflUnULa3OoaDHtt1AedixVtjZ0k0H/7t4Lm8Za53u0senFViJADk/XbuUTzNDKQhQuWXgCu0V3yxC/twHFkiUkiyGR+Kc5mbmcaUAIj75KxOM50erW9mlUZlR8LvS00SdlhacXESWdmFUK9hUS8lfxGw9+LqJF65ZnO+JXxFTHh/Mdjru1OfCq5ZHElDb2XdCvCiuNarLpe4yMaejpKAtEJ/SxPPXG/CEXl55A4v9hLWywz9FLDhDi+mVH9lmEOv+RyRxjFmOGcYsYscKDpkF7Y0KCWjI2QchZxbZQJOXazFGsrCAB4hEtn8AKizPKce8zRaHTT22PcSyKVTAqQjOLISII/4w0Ze/GQl4tHBj9fMTB2VR8C5GybB1y7t6h3yUvqmM8eTCIntM3Zq5uVVzUfOcW4lSBjjlomEhwpdaWDIDwRG58EsSkgT+tyzovzgW0q5ZVYvRnrvNtDOJ',
    },
    txtPrefix: 'prod2',
    txtOwnerId: 'prod2-',
  },

  pharos+: {
    subpath: 'generated/prod2',
  },


}
