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
      CF_API_KEY: 'AgBicF1hvCf6gBaocid9j4tvxd3GtYw9fYGIBsfJJdmVg9Fsg9HdGIrnGNLqKnuqpB4LXoP2joi1LjlMw1RcrrsL6Wg/YiovvTk3KNtp1U3rSoqM/cFx+JxcgIWhzQNlbPbRlA0e/H5FTCYfwChoU7L07Qs86i4YV3zKcb6ZVS5Dc3DzaBlGvLYhPb9SldsTCsjH5n0H3PGh5YjdSw8/WjepxkkvQmDH9D8kZfG9vj58udveyru1v3i7MIis04gyB41aEyauk2gGQ1whe4alLYtDuFLUS3GLryVaEnUAaclqhHBJOmzWnjRqk/R9dcwus1SPgAeqoCG91p1UrHM14d/lpPlEs+cTt+GHpH3GBZrcrRpk8Iw2UnhxXr+MmGG3JLO7u6ocSXIAlYrmloM1Jtar8j9LLdJyFlvnNK7/T+Ag33I5nNTxKTVw703T9k7qFEeRZf1YHn83ndMxiVqju7W/66mPGwjp44hfeacESzCxjjSFpkNdY/inFqphW3gfYB1jXvf8yhRulbHAFsVBVSeunUtXeIHQhuOckluWmnwZQJ93fUzuYk6YfyqYi0+HYWKWRaZ66nUTOGPYLIu9H9zNGHRFnjcAhPRr7yLO6s+AumMpatXRfhBJqG8hl7DogO8E44PpGjOodIITb0ocalvUmTziPVJe9eZHBMg3sN/duCMVyA+oHXzGJ6itcBCdzq77mqoy209byQMrXqN5V3N5BvgBJyknS0oYS1ZisAikVangQRbI',
      CF_API_EMAIL: 'AgCO/f67MUHFRgNRjg1NMXyKALA3s4NLhLn5JWmpRj2NInBbZAdaUARdcNUaFSH+44zSuIjzKQyPxU1eLxx4LcOvg6joslcO8fxSokvYG1mTipQxWpl3kMdvVJNI/52smMLuFm+D03JcEvUL2pvJsFsfSx0bjfjnDq2DzzX+yl6/OsDwiddIxdL6a9JS4fRXnLE3JqisezwDP0tCoFdcYx7JmbAGjxYrGzJ7U109UKQ8VG9X1r9oqae1Su2dT/IsOtvTNSqThCEeibDsZt44lZ5NTb2BDmio/B7JFPPAxVd5myp/iwhyp67sNscSpFLn9sm3GZaY4686cKajesS0yJZs+v5x18+bJ86Fm8gWnZgUtJ9ScefQlCgynevf31xNlKu1QAel4kdbDU8eps61rUU2YK+toENG74myr+VMOhIIu2F81lHm+Av9VSI17ZgsQWPJGlQ7//ZJKqxtva3icnJx20l38L+TtzaKWj/I17fDMKcwyv0bEc0C/Edw6XRf+jR9V7jg+KSCfaYQARCpzwgSdQpi3Pij3k9f6nVh0hGAxcoz9c8/qA4yo50gIO3Z+MMfVhaY2+bPwg08MQrJk36Etmh+fY/qQaZJi2x7exCiJA+43K+H4LLebziO70ei1Ayzkf4p752Cokoxsx+YsWVIMJCedGzShMfRaKRT0fTOdHv/0Ziu84Zu/YFA/CVYsAEhFcydcmpLWSQKEUEbnMQqrvgI',
    },
    txtPrefix: 'prod1',
    txtOwnerId: 'prod1-',
  },


}
