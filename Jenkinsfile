pipeline {
agent any
stages {
stage('Building our images') {
steps {
        sh 'docker image build --tag 1deeko/cwk2image .'
     }

}
stage('launch container') {
      steps {
        sh 'docker container run --detach --publish 80:80 --name cwk2container 1deeko/cwk2image'
     }
    }
}
}
