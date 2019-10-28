pipeline {
  agent any
  stages {
    stage('Build Docker Image') {
      steps {
        sh '''cd /var/lib/jenkins/workspace/traveblog_master
            make git
            ls -ltr
            make build-image'''
      }
    }
  }
}
