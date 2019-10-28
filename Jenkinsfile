pipeline {
  agent any
  stages {
    stage('Build Docker Image') {
      steps {
        sh "cd /home/ubuntu/traveblog"
        sh "make git"
        sh "make build-image"
      }
    }
  }
}
