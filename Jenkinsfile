pipeline {
    environment { 

        registry = "1deeko/cwk2image" 

        registryCredential = 'dockerhub_id' 

        dockerImage = '' 

    }
    agent any
    stages {
        stage('Build') {
            steps {
                                script { 
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 

                }
            }
        }

        stage('launch') {
            steps {
                sh 'docker container run --detach --publish 80:80 --name cwk2container 1deeko/cwk2image'
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
                script {
                    docker.withRegistry( '', registryCredential ) { 

                        dockerImage.push() 

                    }
           }
        }



    }
}
