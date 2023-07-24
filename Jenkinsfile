pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
             sh   "sudo yum install git -y"
                //sh "sudo yum install docker -y"
                //sh "sudo systemctl start docker"
                //sh "sudo systemctl enable docker"//
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
                    sh "docker run -itdp 90:80 my-httpd:1.0 bash"
                }
            }
        }
    }
}
