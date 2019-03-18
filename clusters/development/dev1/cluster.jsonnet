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
      CF_API_KEY: 'AgBDZeEPnLvZlzSMHVCSFJJU2g+ZUyytcOhRn0OTSj+9BcDLQ/q4XJ1zolGUYs8rclpC1XpSkC+qyMd+pehfcDt4qwEal+rT9c+nwZ9VZcvMAqahxb9KZ0I6kLYavUIiRvNjCglo/hDU6gnqICxpSdL9m+gMBaQOD5SNLrAqL6/mkDh8tJZ8rDt3dedQusV/vIC7wbG5y4sPPW2wCufEiXabalKZ/kIiAYiA02BkLs8xlBiLPnItn3jcQTWBgX7kFAtKs2ZjTJziBdcXahqX/geQW++Gl7d41GSMzodZXH/LpQjkyZa6Q5e+fkfj/MyHAiBLjSvZgYQ2KoEs04ndMQCPfSLWCJW2rsNo1vxJcalkyjeXnkoZmwwtChsn2dB1n0RpVXTC5FKDHOP/dBplkFJarewtiUW8pCYEFi0hyy0NThpob9v87nzQlfcwMrgM4A3e4HYS0DKcbfpfkXud4TtsP7G2ziiNRCptfL+v7FDbzgKiAT6/0/KXH9NTfYihqWyiCPlohxJq16dC+Gwa601g4s9M8jiPiwy+ua8nYl0mL1yUHk1d0PHDoLjoLYKiQuBaxcYgSwvyIvLx7Tp6Repr0Jw7/bZJXa8zZIorwsoqosxOHB9BH2wbgX7AcSKKYCExMJ9N0zG9djrEwT6hIJmYQG8ep3av170qcj1GaCR1VD+T0FjkOc6NAuitZ8v+3zQf9M4O8FPrErkEwv1EymZHqcVPyGTZYxH05ZxCXjGWnoAEd5oS',
      CF_API_EMAIL: 'AgA4EWDVEVl5WCd8WH7RBd2IKxk2bYMYb6VQMGpcDksG2i94SmHXc3OL/eUv27aWjritExOdcTDGbeYiBjvdEjCIwIJ9zhJ3TCelZktMoSEX9YQT/A3eWR40nwrysuR3mhTVUjwafXqncpZvgp4NFQwPmjXpPsJ9WloQUd3DDFQcciDn8UBu6cieyQGIGTLDaxXa4kO4VzhQfi+ynCh7to6+ARZik+jVK43T2xj3qZSVcTsk5JU4/hjFYLASYrXZTJIanJ7xc8GUhFa/qfjDsPd8kMyH8L4jgXbEuY5HORwaEMiYvVD5MXj5EGpx6D4IOAWytTNo1yVaDRfz0iibMPzrzqsrxR5GxMjLMr1zBw+L065Xz1T8K6KIoMzAT9NgwXTcLUaefA1W4abUBpCecoasBX+mKS8AD3yx4hnYynMYd3+x/sa2yGFQbPOj19AHuPx25KcKiUWasO9QaO4YJC5u5UUX5kmEsKvt8RFWKHtLwBWR+WjRdCasMT3RAbUWmC4Arl/tqdb8gxQ8nJbWJn8LZ34shf67lbtio1gH25O7Sy0yVbAW9dVkYqp4EgKgzmTKP95Rr8g37vDDcBU1yGTXzhMYrqf/87AovO6FcJCA7W9NssHk1FdHbkwYCtQHAncMwD04mybpv5CBJ0kLs658UOkT5ZJVwwD4HQzikkTjnH7mLmYLctUsLy+p7VUsEqi3pKd8wthI/lrS8QCybY11XJvT',
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
