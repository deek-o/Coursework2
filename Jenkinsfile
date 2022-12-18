pipeline {
environment {
registry = "1deeko/cwk2image"
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
stage ('dockerization') {
      steps {
        sh '''
        docker build -t -d 1deeko/cwk2image .
      }
    }
}
}
