pipeline {
    environment { 
       DOCKERHUB_CREDENTIALS = credentials('docker_id')
    }
    stages {
        stage('Build') {
            steps {
                  sh 'docker build -t 1deeko/cwk2image'
           }
	}

     }
}
