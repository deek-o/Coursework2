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

 stage('launch container') {
      steps {
        sh 'docker container run --detach --publish 8080:8080 --name cwk2container 1deeko/cwk2image'
     }
    }
  
 stage('log version info') {
      steps {
        sh 'docker ps'
      }
    }   
}
}
