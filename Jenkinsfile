pipeline {
  agent any
  stages {
    stage('Build Docker Image') {
      steps {
        docker.build "zhan430/traveblog"
      }
    }
  }
}
