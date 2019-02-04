{
  local kr8_cluster = std.extVar('kr8_cluster'),
  local kr8_components = std.extVar('kr8_components'),
  local component_list = std.objectFields(kr8_components),
  local task_prefix = 'generate_component_',
  local dryrun_task_prefix = 'dryrun_component_',
  local deploy_task_prefix = 'deploy_component_',

  version: '2',
  output: 'prefixed',
  tasks: {
    [task_prefix + component]: {
      desc: 'Generate ' + component + ' for ' + kr8_cluster.cluster_name,
      dir: '$KR8_BASE/' + kr8_components[component].path,
      cmds: [
        'KR8_CLUSTER=' + kr8_cluster.cluster_name + ' task generate KR8_COMPONENT=' + component,
      ],
    }
    for component in component_list
  } + {
    [dryrun_task_prefix + component]: {
      desc: 'Dry-run deployment ' + component + ' for ' + kr8_cluster.cluster_name,
      dir: '$KR8_BASE/',
      cmds: [
        'bin/deployer validate ' + kr8_cluster.cluster_name + ' ' + component,
        'bin/deployer dry-run ' + kr8_cluster.cluster_name + ' ' + component,
      ],
      status: [
        'bin/deployer diff ' + kr8_cluster.cluster_name + ' ' + component,
      ],
    }
    for component in component_list
  } + {
    [deploy_task_prefix + component]: {
      desc: 'Deploy ' + component + ' for ' + kr8_cluster.cluster_name,
      dir: '$KR8_BASE/',
      cmds: [
        'bin/deployer validate ' + kr8_cluster.cluster_name + ' ' + component,
        'bin/deployer dry-run ' + kr8_cluster.cluster_name + ' ' + component,
      ],
      status: [
        'bin/deployer diff ' + kr8_cluster.cluster_name + ' ' + component,
      ],
    }
    for component in component_list
  } + {
    dryrun: {
      cmds: [
        { task: dryrun_task_prefix + component }
        for component in component_list
      ],
    },
  } + {
    deploy: {
      cmds: [
        { task: deploy_task_prefix + component }
        for component in component_list
      ],
    },
  } + {
    generate: {
      cmds: [
        'kr8-helpers check-environment',
        'rm -fr $KR8_BASE/generated/' + kr8_cluster.cluster_name,
      ] + [
        { task: task_prefix + component }
        for component in component_list
      ],
    },
  },
}
