//Jenkinsfile (Declarative Pipeline)

pipeline {
    agent any

    stages {
        stage('Assign dockerid') {
            steps {
                export DOCKERID=1deeko
            }
        }
        stage('Build docker image') {
            steps {
                docker image build --tag $DOCKERID/cwk2_node-js .
            }
        }
        
    }
}

