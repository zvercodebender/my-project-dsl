pipeline 'hello-python2', {
  description = ''
  disableMultipleActiveRuns = '1'
  disableRestart = '1'
  enabled = '1'
  overrideWorkspace = '0'
  pipelineRunNameTemplate = null
  projectName = 'MyProject'
  releaseName = null
  skipStageMode = 'ENABLED'
  templatePipelineName = null
  templatePipelineProjectName = null
  type = null
  workspaceName = null

  formalParameter 'appVersion', defaultValue: '22.03.22-154558', {
    description = 'Application Version'
    expansionDeferred = '0'
    label = 'App Verion'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'ec_stagesToRun', defaultValue: null, {
    expansionDeferred = '1'
    label = null
    orderIndex = null
    required = '0'
    type = null
  }

  stage 'DEV', {
    description = ''
    colorCode = '#289ce1'
    completionType = 'auto'
    condition = null
    duration = null
    parallelToPrevious = null
    pipelineName = 'hello-python'
    plannedEndDate = null
    plannedStartDate = null
    precondition = null
    resourceName = null
    waitForPlannedStartDate = '0'

    gate 'PRE', {
      condition = null
      precondition = null
      }

    gate 'POST', {
      condition = null
      precondition = null
      task 'URL OK', {
        description = ''
        actionLabelText = null
        advancedMode = '0'
        afterLastRetry = null
        allowOutOfOrderRun = '0'
        allowSkip = null
        alwaysRun = '0'
        ciConfigurationName = null
        ciControllerFolder = null
        ciControllerName = null
        ciJobBranchName = null
        ciJobFolder = null
        ciJobName = null
        condition = null
        customLabel = null
        deployerExpression = null
        deployerRunType = null
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = '1'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = 'stopOnError'
        gateCondition = '''$[/javascript
		//myStageRuntime.tasks[\'Check Site\'].job.outStatus]	= 200	]'''
        gateType = 'POST'
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = '0'
        instruction = null
        notificationEnabled = null
        notificationTemplate = null
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        requiredApprovalsCount = null
        resourceName = ''
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = '0'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = null
        subprocedure = null
        subprocess = null
        subproject = 'MyProject'
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = 'CONDITIONAL'
        triggerType = null
        useApproverAcl = '0'
        waitForPlannedStartDate = '0'
      }

      task 'Approve', {
        description = ''
        actionLabelText = null
        advancedMode = '0'
        afterLastRetry = null
        allowOutOfOrderRun = '0'
        allowSkip = '0'
        alwaysRun = '0'
        ciConfigurationName = null
        ciControllerFolder = null
        ciControllerName = null
        ciJobBranchName = null
        ciJobFolder = null
        ciJobName = null
        condition = null
        customLabel = null
        deployerExpression = null
        deployerRunType = null
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = '1'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = 'stopOnError'
        gateCondition = null
        gateType = 'POST'
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = '0'
        instruction = null
        notificationEnabled = '0'
        notificationTemplate = 'ec_default_gate_task_notification_template'
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        requiredApprovalsCount = null
        resourceName = ''
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = '0'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = null
        subprocedure = null
        subprocess = null
        subproject = 'MyProject'
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = 'APPROVAL'
        triggerType = null
        useApproverAcl = '0'
        waitForPlannedStartDate = '0'
        approver = [
          'xlradmin',
        ]
      }
    }

    task 'Deploy to DEV', {
      description = ''
      actionLabelText = null
      actualParameter = [
        'appVersion': '$[appVersion]',
        'ec_enforceDependencies': '1',
      ]
      advancedMode = '0'
      afterLastRetry = null
      allowOutOfOrderRun = '0'
      allowSkip = null
      alwaysRun = '0'
      ciConfigurationName = null
      ciControllerFolder = null
      ciControllerName = null
      ciJobBranchName = null
      ciJobFolder = null
      ciJobName = null
      condition = null
      customLabel = null
      deployerExpression = null
      deployerRunType = null
      disableFailure = null
      duration = null
      emailConfigName = null
      enabled = '1'
      environmentName = 'Rancher-DEV'
      environmentProjectName = 'MyProject'
      environmentTemplateName = null
      environmentTemplateProjectName = null
      errorHandling = 'stopOnError'
      gateCondition = null
      gateType = null
      groupName = null
      groupRunType = null
      insertRollingDeployManualStep = '0'
      instruction = null
      notificationEnabled = null
      notificationTemplate = null
      parallelToPrevious = null
      plannedEndDate = null
      plannedStartDate = null
      precondition = null
      requiredApprovalsCount = null
      resourceName = ''
      retryCount = null
      retryInterval = null
      retryType = null
      rollingDeployEnabled = '0'
      rollingDeployManualStepCondition = null
      skippable = '0'
      snapshotName = null
      stageSummaryParameters = null
      startingStage = null
      subErrorHandling = null
      subapplication = 'hello-python'
      subpipeline = null
      subpluginKey = null
      subprocedure = null
      subprocess = 'Install'
      subproject = 'MyProject'
      subrelease = null
      subreleasePipeline = null
      subreleasePipelineProject = null
      subreleaseSuffix = null
      subworkflowDefinition = null
      subworkflowStartingState = null
      taskProcessType = 'APPLICATION'
      taskType = 'PROCESS'
      triggerType = null
      useApproverAcl = '0'
      waitForPlannedStartDate = '0'
    }

    task 'Get Kube Status', {
      description = ''
      actionLabelText = null
      actualParameter = [
        'additionalOptionsForKubectl': '--namespace=test-dev',
        'additionalOptionsForKubectlCommand': 'all ',
        'config': '/projects/MyProject/pluginConfigurations/rancher',
        'customCommand': 'get',
        'fileContent': '',
        'filePath': '',
        'resultPropertyPath': '/myJob',
        'specSource': 'noSpecification',
      ]
      advancedMode = '0'
      afterLastRetry = null
      allowOutOfOrderRun = '0'
      allowSkip = null
      alwaysRun = '0'
      ciConfigurationName = null
      ciControllerFolder = null
      ciControllerName = null
      ciJobBranchName = null
      ciJobFolder = null
      ciJobName = null
      condition = null
      customLabel = null
      deployerExpression = null
      deployerRunType = null
      disableFailure = null
      duration = null
      emailConfigName = null
      enabled = '1'
      environmentName = null
      environmentProjectName = null
      environmentTemplateName = null
      environmentTemplateProjectName = null
      errorHandling = 'stopOnError'
      gateCondition = null
      gateType = null
      groupName = null
      groupRunType = null
      insertRollingDeployManualStep = '0'
      instruction = null
      notificationEnabled = null
      notificationTemplate = null
      parallelToPrevious = null
      plannedEndDate = null
      plannedStartDate = null
      precondition = null
      requiredApprovalsCount = null
      resourceName = 'rancher-agent-0'
      retryCount = null
      retryInterval = null
      retryType = null
      rollingDeployEnabled = null
      rollingDeployManualStepCondition = null
      skippable = '0'
      snapshotName = null
      stageSummaryParameters = null
      startingStage = null
      subErrorHandling = null
      subapplication = null
      subpipeline = null
      subpluginKey = 'EC-Kubectl'
      subprocedure = 'Run Custom Command'
      subprocess = null
      subproject = null
      subrelease = null
      subreleasePipeline = null
      subreleasePipelineProject = null
      subreleaseSuffix = null
      subworkflowDefinition = null
      subworkflowStartingState = null
      taskProcessType = null
      taskType = 'PLUGIN'
      triggerType = null
      useApproverAcl = '0'
      waitForPlannedStartDate = '0'
    }

    task 'Check Site', {
      description = ''
      actionLabelText = null
      actualParameter = [
        'contentType': 'text/html',
        'url': 'http://hello-python.dev.192.168.17.11.nip.io/',
      ]
      advancedMode = '0'
      afterLastRetry = null
      allowOutOfOrderRun = '0'
      allowSkip = null
      alwaysRun = '0'
      ciConfigurationName = null
      ciControllerFolder = null
      ciControllerName = null
      ciJobBranchName = null
      ciJobFolder = null
      ciJobName = null
      condition = null
      customLabel = null
      deployerExpression = null
      deployerRunType = null
      disableFailure = null
      duration = null
      emailConfigName = null
      enabled = '1'
      environmentName = null
      environmentProjectName = null
      environmentTemplateName = null
      environmentTemplateProjectName = null
      errorHandling = 'stopOnError'
      gateCondition = null
      gateType = null
      groupName = null
      groupRunType = null
      insertRollingDeployManualStep = '0'
      instruction = null
      notificationEnabled = null
      notificationTemplate = null
      parallelToPrevious = null
      plannedEndDate = null
      plannedStartDate = null
      precondition = null
      requiredApprovalsCount = null
      resourceName = ''
      retryCount = null
      retryInterval = null
      retryType = null
      rollingDeployEnabled = null
      rollingDeployManualStepCondition = null
      skippable = '0'
      snapshotName = null
      stageSummaryParameters = null
      startingStage = null
      subErrorHandling = null
      subapplication = null
      subpipeline = null
      subpluginKey = null
      subprocedure = 'getURL'
      subprocess = null
      subproject = 'MyProject'
      subrelease = null
      subreleasePipeline = null
      subreleasePipelineProject = null
      subreleaseSuffix = null
      subworkflowDefinition = null
      subworkflowStartingState = null
      taskProcessType = null
      taskType = 'PROCEDURE'
      triggerType = null
      useApproverAcl = '0'
      waitForPlannedStartDate = '0'
    }

    task 'Clone Repo', {
      description = ''
      actionLabelText = null
      actualParameter = [
        'branch': 'cloudbees',
        'commit': '',
        'config': '/projects/MyProject/pluginConfigurations/git - zvercodebender',
        'depth': '',
        'gitRepoFolder': '',
        'mirror': 'false',
        'overwrite': 'false',
        'pathspecs': '',
        'referenceFolder': '',
        'repoUrl': 'https://github.com/zvercodebender/hello-python.git',
        'resultPropertySheet': '/myJob/clone',
        'shallowSubmodules': 'false',
        'submodules': 'false',
        'tag': '',
      ]
      advancedMode = '0'
      afterLastRetry = null
      allowOutOfOrderRun = '0'
      allowSkip = null
      alwaysRun = '0'
      ciConfigurationName = null
      ciControllerFolder = null
      ciControllerName = null
      ciJobBranchName = null
      ciJobFolder = null
      ciJobName = null
      condition = null
      customLabel = null
      deployerExpression = null
      deployerRunType = null
      disableFailure = null
      duration = null
      emailConfigName = null
      enabled = '1'
      environmentName = null
      environmentProjectName = null
      environmentTemplateName = null
      environmentTemplateProjectName = null
      errorHandling = 'stopOnError'
      gateCondition = null
      gateType = null
      groupName = null
      groupRunType = null
      insertRollingDeployManualStep = '0'
      instruction = null
      notificationEnabled = null
      notificationTemplate = null
      parallelToPrevious = null
      plannedEndDate = null
      plannedStartDate = null
      precondition = null
      requiredApprovalsCount = null
      resourceName = ''
      retryCount = null
      retryInterval = null
      retryType = null
      rollingDeployEnabled = null
      rollingDeployManualStepCondition = null
      skippable = '0'
      snapshotName = null
      stageSummaryParameters = null
      startingStage = null
      subErrorHandling = null
      subapplication = null
      subpipeline = null
      subpluginKey = 'EC-Git'
      subprocedure = 'Clone'
      subprocess = null
      subproject = null
      subrelease = null
      subreleasePipeline = null
      subreleasePipelineProject = null
      subreleaseSuffix = null
      subworkflowDefinition = null
      subworkflowStartingState = null
      taskProcessType = null
      taskType = 'PLUGIN'
      triggerType = null
      useApproverAcl = '0'
      waitForPlannedStartDate = '0'
    }
  }

  stage 'TEST', {
    description = ''
    colorCode = '#ff7f0e'
    completionType = 'auto'
    condition = null
    duration = null
    parallelToPrevious = null
    pipelineName = 'hello-python2'
    plannedEndDate = null
    plannedStartDate = null
    precondition = null
    resourceName = null
    waitForPlannedStartDate = '0'

    gate 'PRE', {
      condition = null
      precondition = null
      }

    gate 'POST', {
      condition = null
      precondition = null
      task 'URL OK', {
        description = ''
        actionLabelText = null
        advancedMode = '0'
        afterLastRetry = null
        allowOutOfOrderRun = '0'
        allowSkip = null
        alwaysRun = '0'
        ciConfigurationName = null
        ciControllerFolder = null
        ciControllerName = null
        ciJobBranchName = null
        ciJobFolder = null
        ciJobName = null
        condition = null
        customLabel = null
        deployerExpression = null
        deployerRunType = null
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = '1'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = 'stopOnError'
        gateCondition = '''$[/javascript
		//myStageRuntime.tasks[\'Check Site\'].job.outStatus]	= 200	]'''
        gateType = 'POST'
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = '0'
        instruction = null
        notificationEnabled = null
        notificationTemplate = null
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        requiredApprovalsCount = null
        resourceName = ''
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = '0'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = null
        subprocedure = null
        subprocess = null
        subproject = 'MyProject'
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = 'CONDITIONAL'
        triggerType = null
        useApproverAcl = '0'
        waitForPlannedStartDate = '0'
      }
    }

    task 'Deploy to TEST', {
      description = ''
      actionLabelText = null
      actualParameter = [
        'appVersion': '$[appVersion]',
        'ec_enforceDependencies': '1',
      ]
      advancedMode = '0'
      afterLastRetry = null
      allowOutOfOrderRun = '0'
      allowSkip = null
      alwaysRun = '0'
      ciConfigurationName = null
      ciControllerFolder = null
      ciControllerName = null
      ciJobBranchName = null
      ciJobFolder = null
      ciJobName = null
      condition = null
      customLabel = null
      deployerExpression = null
      deployerRunType = null
      disableFailure = null
      duration = null
      emailConfigName = null
      enabled = '1'
      environmentName = 'Rancher-TEST'
      environmentProjectName = 'MyProject'
      environmentTemplateName = null
      environmentTemplateProjectName = null
      errorHandling = 'stopOnError'
      gateCondition = null
      gateType = null
      groupName = null
      groupRunType = null
      insertRollingDeployManualStep = '0'
      instruction = null
      notificationEnabled = null
      notificationTemplate = null
      parallelToPrevious = null
      plannedEndDate = null
      plannedStartDate = null
      precondition = null
      requiredApprovalsCount = null
      resourceName = ''
      retryCount = null
      retryInterval = null
      retryType = null
      rollingDeployEnabled = '0'
      rollingDeployManualStepCondition = null
      skippable = '0'
      snapshotName = null
      stageSummaryParameters = null
      startingStage = null
      subErrorHandling = null
      subapplication = 'hello-python'
      subpipeline = null
      subpluginKey = null
      subprocedure = null
      subprocess = 'Install'
      subproject = 'MyProject'
      subrelease = null
      subreleasePipeline = null
      subreleasePipelineProject = null
      subreleaseSuffix = null
      subworkflowDefinition = null
      subworkflowStartingState = null
      taskProcessType = 'APPLICATION'
      taskType = 'PROCESS'
      triggerType = null
      useApproverAcl = '0'
      waitForPlannedStartDate = '0'
    }

    task 'Get Kube Status', {
      description = ''
      actionLabelText = null
      actualParameter = [
        'additionalOptionsForKubectl': '--namespace=test-test',
        'additionalOptionsForKubectlCommand': 'all',
        'config': '/projects/MyProject/pluginConfigurations/rancher',
        'customCommand': 'get',
        'fileContent': '',
        'filePath': '',
        'resultPropertyPath': '/myJob',
        'specSource': 'noSpecification',
      ]
      advancedMode = '0'
      afterLastRetry = null
      allowOutOfOrderRun = '0'
      allowSkip = null
      alwaysRun = '0'
      ciConfigurationName = null
      ciControllerFolder = null
      ciControllerName = null
      ciJobBranchName = null
      ciJobFolder = null
      ciJobName = null
      condition = null
      customLabel = null
      deployerExpression = null
      deployerRunType = null
      disableFailure = null
      duration = null
      emailConfigName = null
      enabled = '1'
      environmentName = null
      environmentProjectName = null
      environmentTemplateName = null
      environmentTemplateProjectName = null
      errorHandling = 'stopOnError'
      gateCondition = null
      gateType = null
      groupName = null
      groupRunType = null
      insertRollingDeployManualStep = '0'
      instruction = null
      notificationEnabled = null
      notificationTemplate = null
      parallelToPrevious = null
      plannedEndDate = null
      plannedStartDate = null
      precondition = null
      requiredApprovalsCount = null
      resourceName = 'rancher-agent-0'
      retryCount = null
      retryInterval = null
      retryType = null
      rollingDeployEnabled = null
      rollingDeployManualStepCondition = null
      skippable = '0'
      snapshotName = null
      stageSummaryParameters = null
      startingStage = null
      subErrorHandling = null
      subapplication = null
      subpipeline = null
      subpluginKey = 'EC-Kubectl'
      subprocedure = 'Run Custom Command'
      subprocess = null
      subproject = null
      subrelease = null
      subreleasePipeline = null
      subreleasePipelineProject = null
      subreleaseSuffix = null
      subworkflowDefinition = null
      subworkflowStartingState = null
      taskProcessType = null
      taskType = 'PLUGIN'
      triggerType = null
      useApproverAcl = '0'
      waitForPlannedStartDate = '0'
    }

    task 'Check Site', {
      description = ''
      actionLabelText = null
      actualParameter = [
        'contentType': 'text/html',
        'url': 'http://hello-python.test.192.168.17.11.nip.io/',
      ]
      advancedMode = '0'
      afterLastRetry = null
      allowOutOfOrderRun = '0'
      allowSkip = null
      alwaysRun = '0'
      ciConfigurationName = null
      ciControllerFolder = null
      ciControllerName = null
      ciJobBranchName = null
      ciJobFolder = null
      ciJobName = null
      condition = null
      customLabel = null
      deployerExpression = null
      deployerRunType = null
      disableFailure = null
      duration = null
      emailConfigName = null
      enabled = '1'
      environmentName = null
      environmentProjectName = null
      environmentTemplateName = null
      environmentTemplateProjectName = null
      errorHandling = 'stopOnError'
      gateCondition = null
      gateType = null
      groupName = null
      groupRunType = null
      insertRollingDeployManualStep = '0'
      instruction = null
      notificationEnabled = null
      notificationTemplate = null
      parallelToPrevious = null
      plannedEndDate = null
      plannedStartDate = null
      precondition = null
      requiredApprovalsCount = null
      resourceName = ''
      retryCount = null
      retryInterval = null
      retryType = null
      rollingDeployEnabled = null
      rollingDeployManualStepCondition = null
      skippable = '0'
      snapshotName = null
      stageSummaryParameters = null
      startingStage = null
      subErrorHandling = null
      subapplication = null
      subpipeline = null
      subpluginKey = null
      subprocedure = 'getURL'
      subprocess = null
      subproject = 'MyProject'
      subrelease = null
      subreleasePipeline = null
      subreleasePipelineProject = null
      subreleaseSuffix = null
      subworkflowDefinition = null
      subworkflowStartingState = null
      taskProcessType = null
      taskType = 'PROCEDURE'
      triggerType = null
      useApproverAcl = '0'
      waitForPlannedStartDate = '0'
    }
  }

  // Custom properties

  property 'ec_counters', {

    // Custom properties
    pipelineCounter = '16'
  }
}