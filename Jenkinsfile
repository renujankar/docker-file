pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
             sh   "git url:https://github.com/renujankar/docker-file.git, branch:master"

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
                    sh "docker run -it -p 80:80 my-httpd-image"
                }
            }
        }
    }
}
