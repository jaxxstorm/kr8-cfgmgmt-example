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
    external_dns: { path: 'components/external_dns' },
  },


  // this is configuration for the above components
  // you override the default params in the component here
  // the name needs to match the name of the declared component
  external_dns+: {
    extraEnv: {
      CF_API_KEY: 'AgCVENbV+a6c0cvDVAABoZU+O366atQwOYdc7qmj0Bb24vXaYDIVn8EWQUP560isCDgH5MB8+rOdgUKjeHLFNPbCMCECJppIIlZi9W3TfyvzCVfBVugXnewpHFeNDvXnEjzFOxbLgUCSwp2PA1EAvJI/GVolcZ/YqM8YSUo41djPFSo5J0+Abls9rZUu1zD3pelPZgKv9vgCdy8jqMi6+TvVFE9Q/ra4MACT9bdMfhrkEIlfWY5KTKivHgQLr4U988niBR9unEIle1vmx3Gxd1yIJGOjw0YWya0DLIMNr0km1DcPgG3sjg+uZ/WQATipgHRn8a5GWM75Yzck8HjX7KDpL/qo7pKImfja3TYIGQ2dN12IDvDAemnsElVQOnis0d/kg1O99/w1eRWwRkk/rE6EolpjEYJUTIJLZS3I8lSwXuhwn1Ie36AMm+2fyF1vOA6GEPwG30fSJkFR9XYYUlZ68+YhwaEoUXJx58HZn6/N2L9enld3HOkLzE9QeIZUHLbPjwix7Qwm+kuAI9YuTmSUrWkbY98Cl/M9uU9W0Oz/ofMknAuZrJXHlXiS758P6cwhNvCeN/jrEF2blzkBh1a8NPdFVykcwCobydU1NI7Y4054FwnSLQlsQ4WkY/cyb1LRO/ZJ4p+q2hbgfOaaA+TQJpifSTBKcHBGj5KfPgIGnsWLNLtFiztwPvq0dZ7h43p7jsUpDs5qUZc6YkU4OZ8V4Hha5NOLwHf4qNqQ67zY7YI2EzmK',
      CF_API_EMAIL: 'AgB4CLKTpbm1kDFXDbx0o8yoDQOQ7vje2DDQtzi43ojAXpq1cXJVclXBTTwsFw8o2nFki2j1ywwtWPpkDx+hCHpQK38g7attDWtRuymStXFOnirHRttfJEFvikufVKEt76VS4ArURQg3jEwuEwl8xetHNNaygZNva85XqIjKsU2tpKa/Bmb5iTYn860P98+bXyMr2iUncZIlFf3ASJVCcVzDABz6QGGmxu5z/bkqN+DPznxk09Pvt4i1rqmqrCC6L4IBbisInXBUs9h1SgUiiv2tq/MyUiG8vrwCH8/OhhLs4DPQ8w852Mwk6bZor0LOLWw2DD6Tsn+qsaxWYqetFFP3Q+hUh2x8i4DjyzlYXEB4eRJwf/GBW2v0q+L+uwLo1TH2W14Pvnahf6hXLsaa08o6NZRaHOv5d/Xc+Dk1+ADGGO6FQa8XfdxqA/LotBvchAh2FCuICBdMzi6TmC9uJjd37CXuQuiiyVYusYw/kJJ1LqMvEZt9cXl3T4SFoTkrNrOJvyraDbVqgD/u6hsSYyVc0+KojvQoPbI2GwaJClcGByLqscaVPSZMkH+T9rNcT+MfhIl9a3wDt09tMyYF4byGW+bcEGRSVBE+boom2Qqnnn4/+3AG1wrgGjhpz4jXItPjpmQ+vkQNGdq0cV1IuzXkiJzM7N8dnHQs0U+NX+9Br4f9oCr75L6zhmZ4YiReMwrNiJcBDAA+Bm2MPo2eqmkrw76y',
    },

    provider: 'cloudflare',
    txtPrefix: 'dev1',
    txtOwnerId: 'dev1-',
    domainFilters: [
      'briggs.work',
    ],
    tolerateMasters: false,
  },


}
