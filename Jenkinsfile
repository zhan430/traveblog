pipeline {
  agent any
  stages {
    stage('Build Docker Image') {
      steps {
        sh "echo $PWD"
        sh "make build-image"
      }
    }
  }
}
