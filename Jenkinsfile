pipeline {
    environment { 
       DOCKERHUB_CREDENTIALS = credentials('docker_id')
    }
   agent any
    stages {
        stage('Build') {
            steps {
                  sh 'docker build -t 1deeko/cwk2image'
           }
	}

     }
}
