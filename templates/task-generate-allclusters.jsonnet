{

  local clusters = std.split(std.extVar('cluster_list'), ","),

  version: '2',
  output: 'prefixed',
  tasks: {
    [cluster + '_taskfile']: {
      desc: 'generate task file in tmp directory for cluster: ' + cluster,
      cmds: [
        'mkdir -p tmp/' + cluster,
        'kr8 jsonnet render --cluster ' + cluster + ' --format yaml templates/task-generate-cluster-parallel.jsonnet > tmp/' + cluster + '/Taskfile.yml',
        //'kr8 jsonnet render --cluster ' + cluster + ' --format yaml templates/task-generate-cluster-sequential.jsonnet > tmp/' + cluster + '/Taskfile.yml',
      ],
    }
    for cluster in clusters
  } + {
    [cluster + '_dryrun']: {
      desc: 'dryrun all components for cluster: ' + cluster,
      cmds: [
        'task -d tmp/' + cluster + ' dryrun',
      ],
    }
    for cluster in clusters
  } + {
    [cluster + '_deploy']: {
      desc: 'deploy all components for cluster: ' + cluster,
      cmds: [
        'task -d tmp/' + cluster + ' deploy',
      ],
    }
    for cluster in clusters
  } + {
    [cluster]: {
      desc: 'generate components for ' + cluster,
      cmds: [
        { task: cluster + '_taskfile' },
        'task -d tmp/' + cluster + ' generate',
      ],
    }
    for cluster in clusters
  } + {
    default: {
      cmds: [
              'kr8-helpers check-environment',
            ] +
            [
              { task: cluster }
              for cluster in clusters
            ],
    },
    taskfiles: {
      desc: 'generate task files for all clusters',
      cmds: [
        { task: cluster + '_taskfile' }
        for cluster in clusters
      ],
    },
  },
}
