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
                   sh "docker build -t my-httpd-image ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh "docker stop test"
                    sh "docker rm test"
                    sh "docker system prune -a -f"
                    sh "docker run -d -p 80:80 --name test my-httpd-image"
                }
            }
        }
    }
}
