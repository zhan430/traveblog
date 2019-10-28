pipeline {
  agent any
  stages {
    stage('Lint HTML') {
      steps {
        sh "tidy -q -e traveblog/*.html"
      }
    }
    stage('Build Docker Image') {
      steps {
        script {
	    docker.build "zhan430/traveblog"
	}
      }
    }
  }
}
