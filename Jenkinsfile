pipeline {
  agent any
  stages {
    stage('Build Docker Image') {
      steps {
        script {
          docker.build "zhan430/traveblog"
        }
      }
    }
  }
}
