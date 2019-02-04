{

  // contains metadata about the cluster
  // this can be used elsewhere in params for components
  _cluster+: {
    tier: 'prod',
    region_name: 'ams3',
    cluster_name: 'prod1',
    cluster_type: 'digitalocean',
    dns_domain: 'lbrlabs.com',
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
      CF_API_KEY: 'AgChhHCIYYtVfktsZtdJ+hocpMltPIpaoW97K1JPIppDtuTsxB1KjMRgIq7D7LqQFvypQJ8Vu7yr2tMOii/gVf6jy/7KLgbBSP61nqRDjHsJEOZf9eIOPcM2w/X1oHvuMALDab0xQM9s5vC6Ur3f2ScFQzEOwmRIljH9scKYQvtod68x8tHgAWBunFtzDCTDs1Pr9+u3xIkgFHIOWCmfWsjoULoiJnlG2GQmFtnKVauGWhUxp3xIIi5AwheY3h+WhqFU4oAgEu35OKV74sU1h/ebabewudx/2mFAdH9ZHgBPWjU+dkAUGDQjCVymG5ZlZ00Guorm2elEpRS1JKzKpZBO2XXtgjrzKA3wzMTiYMco6p02VoPXrh4gWhVi+ySQ2LIIp7aMIxNrXSu01nvXLjzXHAAgBjDqViMU1DucKg0NzkwHAMwMHTLjiNsRRn491AA8LrWiIPyI4rKGP7ZcztXL8IRhyx68luHpo6Bw7FjNkrrwQ5Ax5w2VOrdJNOmwUeP++Yg9/41mcNws+1aWcRSB/3eox388iiiKKYcbUEgPc2AjcfXRv+J/YEu30nxAK85WdkHkEVfs9OgG7E22FOtC5B51d9pigXJXUbxnArh+Hp8VUU3NQYZT0ZFhHgkc+CS9dmMIpima/GNBNbDX4q9qPGqtU0zlzSWErJ2dLz0HQXTR0JTbbFFtrpuJYYS6OFUBGJA5lNLUMSwyTdmFVkHxbJ8dIipSH9HmkdQat/qkJMs2NF3d\n',
      CF_API_EMAIL: 'AgCHWrywSV/YIpTOTg/S6txxDCiZ04hpsp67Q5+zzMzE8q3qZdz2oHb255S6YV4Mfz3PiZ5pUcwntArk1uWVqLt8M7R+79aHQsyhj6+nlDlzNSJwbflu6c7PPYSRQD0NsBJsh7asY76CG7qYjDiF1xXcRauhLQoaYGy0gK+NDFqGiEwf75W9GYLWYOjhEo6XDDctrAqfEhsy9KK/H88OX8/4mOxRMeQ5tVndYB4EQYcC4MH/JDCwS51P1tHimZec/7+fftev6bIXLqmU2QLHDfsJbA16u+KSK99oJZdGIE+gLplw9okG5mzDrwUmxxXm0uD6KZ4lFy5Pgz4yCQGm18mKeHHczJmR11ckj7FSU/jFsaoukZMkAKQBlAFHmdl2RvTXwRIWdJc+66M5J/LtrunGbLIlTNt3i33TfSPPy2TwxAsy+H8CysmV3Tt3XntLcW3KYuen1Ft6Z0N0KbpyFPa0HBKwZAibcVqxdX0Nw53yjOHC4n1qahgQyl1/GXrvye7/YJPHCVeTwT4ukwccDR4MYqAUhoabuYZxZVq2wdxGhgZjSNjvL8Vfu7RIguKyBKsw6gNep5wNqWZ8vm8GD53X2Jtj3DtO5N+Fa2rgbAtSPh0obmxH4W6FT5LMxgoz7drsDp3+v2Dk1ithsHEN82eTyAqs7v+dsMrxf+AaLcwCjZnJtIZO3EQr+Tujg8PFmL9keUSEqC+8SSobcfrAfCj5+KIK\n',
    },
    txtPrefix: 'prod1',
    txtOwnerId: 'prod1-',
  },


}
