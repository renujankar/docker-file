pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
             sh   "git checkout master"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    /*sh "docker stop test"
                    sh "docker rm test"/*
                    sh "docker system prune -a -f"
                   sh "docker build -t my-httpd ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh "docker stop test"
                    sh "docker rm test"
                    sh "docker system prune -a -f"
                    sh "docker run -d -p 80:80 my-httpd-image"
                }
            }
        }
    }
}
