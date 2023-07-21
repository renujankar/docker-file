pipeline {
    agent {
         label "dev"
    }
      stages {
           stage ('stage-1') {
              steps {
              sh "sudo docker system prune -a -f"
              sh "sudo docker build -t my-httpd:1.0 /mnt/jenkins-slave/workspace/docker-file/"
             // sh "sudo docker stop test"//
              sh "sudo docker run -itdp 700:80 --name test my-httpd:1.0"
              }
      }
}
}
