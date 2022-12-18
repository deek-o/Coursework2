pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker image build --tag 1deeko/cwk2image .'
            }
        }
    }
}
