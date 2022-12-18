pipeline {
environment {
registry = "1deeko/cwk2image"
registryCredential = 'dockerhub_id'
dockerImage = ''
}
agent any
stages {
stage('Building our images') {
steps{
script {
dockerImage = docker.build registry
}
}
}

 stage('launch container') {
      steps {
        sh 'docker container run --detach --publish 80:80 --name cwk2container 1deeko/cwk2image'
     }
    }
  
 stage('log version info') {
      steps {
        sh 'docker ps'
      }
    } 

 stage('remove container') {
      steps {
        sh 'docker container rm -f cwk2container'      }
    }


  
 stage('push to dockerhub') {
      steps {
        sh 'docker image push 1deeko/cwk2image'
      }
    }


}
}
