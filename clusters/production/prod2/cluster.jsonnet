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
      CF_API_KEY: 'AgBbecVO/zJBurLvkMwkqlh4ZFJNZUV2pPlQt7W4tZL7EDuuocgNiEc7ABXSmXJHBFtqMrc9KInCr8+AGZJdjOzaTkC6UjHcriHMC3KmQASUtujHcpF24TOTZ921w1383DZqgjnAcWoTTniMlgjPwkrVSoYsXIY19OXJmXx9cZ9tZd+X0KZxr5oerZwFknXmG2i1lLQn/SVBhfTLq3HmIuU8BTaTVQOGuWARDUVE5YVsgKe/cYF8LTWZtqNB4DDtX0XZRWD9j7JC8K4zttb06rkD3JcQ6UZLt1IKf9rsfijSaXifuqXW2Ms4giAi3k1PQfwxmGN70GNkj2NfTie5qmdAvXpT2hab7UBlRHTmSPUDoHEUGEWBNyn09aX0/Yg61gK7ptpEm6aff7udVKfqiZ97QwoRlYPCgPzlUArEa+Wf29Y0qtFm/iAKZKIOxbL1rtB0rIWU94z8ltHhGlov/Yz9tGgnZbDO4eHZa2+miOc2iSavKQSOr3dAE3WEuch5AmIbg7e4YJWfbwqgdqPD/GzqUV18sGL1+51GHq1yOE9bL5QmFnJi0qifPL6+Ik29mnBL2LMjuJSaFVG1kkCmtQgVjNPq9/r/FiPDfuL5lVi2nhNjmFThqjoGWhvi4edp5Hhek+3w/dWWYsafI7/Tf0yEJbmF4xHfbgGlCnKTh8iTQ5aQWaz2yxZJruR1TpX62yiXVDdoBr/4G+P7zJvunyE4pyChFJNCf+4JfJ6FDlNiwZq3ShN7\n',
      CF_API_EMAIL: 'AgAQiGp6Bv6HshS+Kqd6BeC34A0bcd9JkPPx42prwRVPE1IlX1beeHh9yujUH3w2EHSUsKCpOVVEKT3Oyw3mCh9Lu4RFQD4yPnQBgOIzQSBuPACpLcUQhOrmNrNbaQdcVGn0wUamSkCLy0UdqBRgxtewoozU0MAA0EuRcdB27dz9EI7xpFc4Ee2kH5J6HY05Nu+nChj9W+7AcyIIlXTc/wqXKeXiHMPmC8ZSSw+PIz4Tf+FfW+hYn3k3G+0hArYE3jiQtptaplgRSIVAYZKn7BoJjSngQ5M8DVqsXTfQivAGr64UqcJiTJXGmLunJPiA9n8Qc7X8tzXNwESWvh0TLpCDVfHKIrlRzWFIZ7tTXNdrtYeIf8rWU4JuInLU5XdoTk33wx7IDDNBmbmDg8guIqooifUlDaqpSxJeroJdelGUGibVXTgXD9ZOmhwAoNmTKAUEJT8YyDAMtl2dXjtSIlCyB5TyK8oVyJ7RIALkBLtwqWUgR4yuqSDUOn/+k2KYFCF0cjr2sRLnqQpzfgY1XFV5SCEBdSs7clDWueg4J1c9/aTjvb0se7hlpyi0h9flL8sHLJXoGSdVyd1kuHRJxoV/TdFLQRnbQYdgmb2UFO0/yzGRUXS1BQEseViWG9NQQw2Crw3Su0f0bS3M8z2kPAMIi+Tjp0x/EFqFrJEpY6LnHVqpQZj+sYSTj291KE21M9qR08zlpKhasF+1RmG/xReZuFJO\n',
    },
    txtPrefix: 'prod2',
    txtOwnerId: 'prod2-',
  },

  pharos+: {
    subpath: 'generated/prod2',
  },


}
