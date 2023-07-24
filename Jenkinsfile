pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
             sh   "sudo yum install git -y"
                sh "yum install docker -y"
                sh "systemctl start docker"
                sh "systemctl enable docker"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    //sh "docker stop test"
                    //sh "docker rm test"
                    sh "docker system prune -a -f"
                   sh "docker build -t test:8.0 ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    //sh "docker stop test"
                    //sh "docker rm test"
                   // sh "docker system prune -a -f"
                    sh "docker run -itdp 600:80 --name renu test:8.0"
                    sh "docker exec renu chmod -R 777 /var/www/html/"
            }
        }
    }
}
}
