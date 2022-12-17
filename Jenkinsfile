pipeline {
environment {
registry = "1deeko/cwk2_node-js"
registryCredential = 'dockerhub_id'
dockerImage = ''
}
agent any
stages {
stage('Building our image') {
steps{
script {
dockerImage = docker.build registry
}
}
}

}
}
