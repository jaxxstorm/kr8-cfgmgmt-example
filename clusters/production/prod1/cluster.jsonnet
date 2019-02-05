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
  },


  // this is configuration for the above components
  // you override the default params in the component here
  // the name needs to match the name of the declared component
  external_dns+: {
    extraEnv: {
      CF_API_KEY: 'AgBVGeAxfKBe2bLTVRBDnAfEfEwn2w5+e7dTQnxh9OuT2F5KaHvOhnTqwmh+7yhlEg9m5EyQIPwkGVTuwePG7m2DKZp6gmMfy1KyBzg11/5j1yl8KAX+fTeoiaarCqHlpjtdH3OMlT18Yk/qGlwg6++/SuPpEGlU2L9ZVxglFjvYUPGEhkZrJXIcMECT39P2f82Ir6RbBwH3Siq1dFdQHX6VeKWIGk02+z6dNeDE4NnY6dziah71iH5ka6+9v3tdNw4G0jbylJnCxeDYPThZIGoc4U48zorYAXSzqXvl4vKDFS7v8TObASOkVNcZKutdAdiYD1DY/i0X+JK2bnNjsUFbszWGAysV98HwJPmLDPdGf7Barl4uAevn/FJinbC9Tp8GXABz4WCkXVY55U/31aYKUb4jHu2fj9OZFNn13Guhhzlc4ORgeWIrOI33Jxw6i4zMCgZrcVZe6M3D2PIKB/TWNB2CfRThr9ic/Mr1yEpQqaL+ZTn2qL9MAXmIzia6Rp1I35+eCnZ8zmQixMkNVqJiJOSbaIOTNOI8FPKRZVpcci4o9rSSW+5mZDOUctyUUibHSFlkpQAcxjm6KL8KXSgWjfnU5PHNZIK367iljyuEmz5WOOf+CuxEjvfsRBwfwwDP5pNf4PrdvGLxjBjcJlaK0/nFy1yKo4CPpp0wm0jzt6j7UQGwBA7GwEaha87TkARQBfiG+dVhH+bFTGzxNN3V9jN5mukjNAotea/Q/bKWxesST+JB',
      CF_API_EMAIL: 'AgBYgBNN+fPBa0pikQ4w5weZTHYI9hjGvkL7wv+PkcntMkM/W/ZSL8B6wDaCVjYnkD4C4J0Ucvsm9CDqOepdj4OGAYjGHSoy2jFIXAG8QlcQUlYCDTgKJaLURVvuFijfpymdraEON/YmFZP4llGxDD2lOLOjw6bTftCBmqLU38zR6AqhSdbYtcxuM0G6HHQGztXmZw5l40tzkCxTdTSUFt0zruT9ApZ94vwqaTqT+AvjDNkWV+rt+eZOkm7iE8V8+ANd/kQ5cS8m7Qy8SwvJpnQT/Hn1R4v6fEjpWRMPiiBOwPhJacnFy9AYdxKjuClHFZEsr2XUY4CelOpwZNJ+NNgclN6PVm4NkOxyXSLMF2gn63D7d41YeebptiZtd8g01+IXS9wBL+knrub7wuoQJ7peU7qHyZVEndx/I1vvn+E7we04/1thhmKBirNzao5dTUq44kGlvUqZx2GLwHX7BXksx6ZeJuQNw4UFC5UJf4lRRtuWX62RUtvANwhKRLSLgT27QvOMqAxClrOg1/iLoxsyZ/XXbE8YqVXqcXCSF3Z9Ywb+1fXUlAPcGfPZ2xvmLdUfnQyIq6IhQZqAd+I31//kSDLbAXAUMRwLQbnT5b6I+q1Jybup6wNFLOscJlI016gqi8ouMGtkdRQR1GET48gPFU79bIAsl6f5tK1EcpnrsMUUviww52LEPJymMR5L67wM7fgu5i6cN8QR5TJY2eJk/ROV',
    },
    txtPrefix: 'prod1',
    txtOwnerId: 'prod1-',
  },


}
