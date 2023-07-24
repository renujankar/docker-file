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
                   sh "docker build -t my-httpd:1.0 ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    //sh "docker stop test"
                    //sh "docker rm test"
                   // sh "docker system prune -a -f"
                    //sh "docker run -itdp 90:80 --name sarika my-httpd:1.0 bash"
                     sh "git init"
                    sh "docker run -itdp 80:80 /root/.jenkins/workspace/sarika/:/usr/local/apache2/htdocs/ --name sarika httpd"
                    sh "docker exec sarika chmod -R 777 /usr/local/apache2/"
      }

            }
        }
    }
}
