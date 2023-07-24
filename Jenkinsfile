pipeline {
    agent {
       label 'dockerfile-slave'
    }
    stages {
        stage('stage-1') {
            steps {
                //sh "sudo yum install git -y"
                sh "sudo yum install docker -y"
                sh "sudo systemctl start docker"
                sh "sudo systemctl enable docker"
                //sh "sudo cd /mnt"
                //sh "sudo git clone https://github.com/renujankar/docker-file.git"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    //sh "sudo docker stop test"
                    //sh "sudo docker rm test"
                    sh "sudo docker system prune -a -f"
                   sh "sudo docker build -t test:9.0 ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    //sh "sudo docker stop test"
                    //sh "sudo docker rm test"
                   // sh "sudo docker system prune -a -f"
                    sh "sudo docker run -itdp 700:80 --name anu test:9.0"
                    sh "sudo docker exec anu chmod -R 777 /var/www/html/"
            }
        }
    }
}
}
