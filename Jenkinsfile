pipline {
    agent {
         label "dev"
    }
      stages {
           stage ('stage-1')
              staps {
              sh "sudo docker build -t my-httpd:1.0 /mnt/jenkins-slave/workspace/master/"
              sh "sudo docker run -itd --name test my-httpd:1.0" 
              }
      }
}
