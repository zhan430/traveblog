pipeline {
  agent any
  stages {
    stage('Pull GitHub') {
      steps {
        sh 'make git'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'make build-image'
      }
    }
  }
}
