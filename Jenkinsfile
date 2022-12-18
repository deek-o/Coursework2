pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker image build --tag 1deeko/cwk2image .'
            }
        }

        stage('launch') {
            steps {
                sh 'docker container run --detach --publish 80:80 --name cwk2container $DOCKERID/cwk2image'
            }
        }

        stage('log') {
            steps {
                sh 'docker ps'
           }
        }

        stage('remove') {
            steps {
                sh 'docker container rm -f cwk2container'
           }
        }

        stage('push') {
            steps {
                sh 'docker image push $DOCKERID/cwk2image'
           }
        }



    }
}
