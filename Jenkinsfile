pipeline {
    agent {
         label "dev"
    }
      stages {
           stage ('stage-1') {
              steps {
              
              sh "sudo docker build -t my-httpd:1.0 /mnt/jenkins-slave/workspace/docker-file/"
              sh "sudo docker stop test"
              sh "sudo docker prune -a -f "
              sh "sudo docker run -itd --name test my-httpd:1.0"
              }
      }
}
}
