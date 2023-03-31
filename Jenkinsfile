#!groovy
@Library('jenkins-shared-pipelines@master')

Map configMap = [
    application: "node",
    COMPONENT_NAME: "node-web"
]
if ( env.BRANCH_NAME.equalsIgnoreCase('master') ){
    pipelineDecision.applicationPipeline(configMap)
}
else{
    pipelineDecision.applicationPipeline(configMap)
} 