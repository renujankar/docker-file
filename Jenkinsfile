pipeline {
    agent {
       label 'dev'
    }

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
                   sh "docker build -t test:9.0 ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    //sh "docker stop test"
                    //sh "docker rm test"
                   // sh "docker system prune -a -f"
                    sh "docker run -itdp 700:80 --name anu test:9.0"
                    sh "docker exec anu chmod -R 777 /var/www/html/"
            }
        }
    }
}
}
