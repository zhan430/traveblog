pipeline {
  agent any
  stages {
    stage('Build Docker Image') {
      steps {
        sh "echo $PWD"
        sh "sudo make build-image"
      }
    }
  }
}
