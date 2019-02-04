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
    // pharos: { path: 'components/pharos' },
  },


  // this is configuration for the above components
  // you override the default params in the component here
  // the name needs to match the name of the declared component

  external_dns+: {
    extraEnv: {
      CF_API_KEY: 'AgANydgcAI18InqePLbgfxKcpd7FBRxzQ/i2CDhSTkeZST783cg+qRFH/Y2dsLyzuXtiwsS5ZFBfDw9Me7NZGDZOWINn8y+MaDzByZp69AQ5EPaElj9Ho5bCzHdeGSefRWEEgRDQFgbPeB8Fq5PiHaH1Hss7nREbAcBoJiOm8NwX8xncX0enGJhl0yUMugNLfrVB2/Ot6iQ1CD6yNIaAjHfFef+YURjKE/ULLlsczByNdm9UrwTrGE6Nd5PVT4LWiYJrAMBmzo1s8XD8hT1PkIhqR1+vl4RxP7iyAr3w9pxyR0Kfjm2APFBIdbSzaSFLaz+N+pVgWwE6TwPOTLVG/nkjsKAttW4ma/z7lP08TCC8+xOzQx12wcSXDu8MOMOWmVEHkr7cqr9p8bHscBjvScAxb10X5BoMSNUQEA7H1uQqnI0++yeJHb80rR950yIJAjWr/uQ8zz1c1XIVIljnWpyZM5Ad1WdcQ1mhsEt+2+87x90N5TLxZ4N2VFeM6vbRfIeRyoXQ0xkPSxAmHqkW5y6eckUiXt62LS1D5QUFnNkcpbQU1C10klxcEW4WguLfpA71UaOf3hk16Th3VlTBfqrLAJwHiYVZfYkWR9Otll6rgwWD8fXYDivSjh7zhPHPu/aVWtewRe23Ya3OU43JmQCgjxsH/UO5uBcmPUyl9TlLKO2zcW5wNGXuhV5PFC2qiyplXqNMY5wkyCWKALQbydHGdomU1nnqKWOvsjvACJgmqRQrhdgy',
      CF_API_EMAIL: 'AgCaNniFBwXD8XFzh+Qijn3Kb2DkOObUTipI5+DywebfA0tgZMD2uzbjKV31NzefhhVFi+wsRr1K1k0YszRG+tZurcrIgWLZQELX9lIgWcWj8fykYbjPDpbSMebvXugh28m3mmfGBWFguCDBOe+oZVkZEF2EgEcuZ5GoiI1+uSPgJCVF3QR7N3G7kcLHRgf7TopdIjkgTpGDen0erbJxt6D1YphLs2d565KMiazDCaPbHnf3IaUeEiPpjZy/PzsoIA+ZQ94xl/BYiTc+Zdcb6Fw6HpmDRpP9oqPXBItZVRhL4LxeTs4uNBeSljZo/xOpmSwCKBBGCgdogpnhU5X+qozW/vVaKQtq1/Lvy523mMu2kDTY0OSlhmPoz93ufyXqaiLqxJjbmoLR7UQNPb0eFvXPrdMDPl8IUmPiBAfa+l48U/geRHuHRN760z4CoTUDLJiRhnuRxlmSNizfszzwDnWn+FQwfdOUzvNrcS/qMOtHhtMG/WWzAn2XyudsbDwSsZbTqMLT1x8zsJYalEl/S1OMG/OD74V0zYTe1zAihpdZEqjFxRpiqUZqyCOcDh/2pRDtsvcj0i8klVMDuEXeAFYGTq/Ae+Hja8rH8gBoEekPAURuQpA2x0ik+PFDBx1fEpAR7lAl0VvCoTyTUlgWRXV81H163NxIvFvLryjj3LPfdjacUFT282y8jOPQuE5IZsHWIvhlKk0EKfRwalIg4jzRLuKP',
    },
    txtPrefix: 'prod2',
    txtOwnerId: 'prod2-',
  },

  pharos+: {
    subpath: 'generated/prod2',
  },


}
