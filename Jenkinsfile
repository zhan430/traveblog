pipeline {
  agent any
  stages {
    stage('Build Docker Image') {
      steps {
        sh '''cd /home/ubuntu/traveblog
            make git
            make build-image'''
      }
    }
  }
}
