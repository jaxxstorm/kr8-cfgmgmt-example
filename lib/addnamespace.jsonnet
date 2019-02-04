local helpers = import 'helpers.libsonnet';
local config = std.extVar('kr8');
local inputYaml = std.extVar('inputYaml');

local clusterlevelkinds = std.set(
  [
    // these resource types should not be namespaced
    'ClusterRoleBinding',
    'ClusterRole',
    'CustomResourceDefinition',
    'Namespace',
    'PersistentVolume',
    'StorageClass',
  ] + (
    // include additional list from config
    if 'kr8_nons_kinds' in config then config.kr8_nons_kinds else []
  )
);

[
  //add namespace to resources that don't have one. Skip kinds that are cluster level, and skip
  // kinds that do not have metadata (e.g. <Resource>List kinds)
  if std.setMember(object.kind, clusterlevelkinds) then object else (
    if 'metadata' in object then (if 'namespace' in object.metadata then object else
                                    object { metadata+: { namespace: config.namespace } }) else object
  )
  for object in std.native('parseYaml')(inputYaml)
]
