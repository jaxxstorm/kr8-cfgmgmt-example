local apptio = import 'apptio.libsonnet';
local config = std.extVar('kr8');

[
  if std.objectHas(config, 'cloud_credentials') then
    apptio.SealedSecret('cloud-credentials') {
      data: config.cloud_credentials,
    },
]
