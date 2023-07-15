pipeline {
    agent any
    
    stages {
        stage('Stop and Remove Container') {
            steps {
                sh 'sudo docker stop madara || true'
                sh 'sudo docker rm madara || true'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh 'sudo docker build -t my-website .'
            }
        }
        
        stage('Run New Container') {
            steps {
                sh 'sudo docker run -d -p 8082:80 --name madara my-website'
            }
        }
    }
}
