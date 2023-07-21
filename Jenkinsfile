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
                    //sh "docker stop test"
                    //sh "docker rm test"
                    sh "docker system prune -a -f"
                   sh "docker build -t my-httpd:1.0 ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    //sh "docker stop test"
                    //sh "docker rm test"
                    sh "docker system prune -a -f"
                    sh "docker run -itdp 80:80 my-httpd:1.0 bash"
                }
            }
        }
    }
}
