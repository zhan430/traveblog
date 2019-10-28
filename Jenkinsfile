pipeline {
  agent any
  stages {
    stage('Build Docker Image') {
      steps {
        sh '''cd /var/lib/jenkins/workspace/traveblog_master
            make git
            make build-image'''
      }
    }
  }
}
