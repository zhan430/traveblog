pipeline {
  agent any
  stages {
    stage('Build Docker Image') {
      steps {
        sh "echo $PWD"
        script {
	         docker.build "zhan430/traveblog"
        }
      }
    }
  }
}
