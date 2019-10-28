pipeline {
  agent any
  stages {
    stage('Build Docker Image') {
      steps {
        sh '''/var/lib/jenkins/workspace/traveblog_master
            make build-image'''
      }
    }
  }
}
