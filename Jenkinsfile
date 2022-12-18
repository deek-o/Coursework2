pipeline {
agent any
stages {
stage('Building our image') {
steps {
        sh 'docker image build --tag 1deeko/cwk2image .'
     }

}
stage('launch containers') {
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
       withDockerRegistry([ credentialsId: "dockerhub credential", url: "" ]) {
      sh 'docker image push 1deeko/cwk2image'
       }
      }
    }


 stage('deploy to k8s') {
      steps {
       sshagent(credentials:['sshKeyforEC2']){
               sh 'ssh  -o StrictHostKeyChecking=no  ubuntu@107.22.152.92 kubectl set image deployments/cwk2image cwk2image=1deeko/cwk2image  && ./multiple_users.sh'
          }

      }
    }

}
}
