pipeline {
  agent any
  environment {
    credential = 'dockerhub'
    image = ''
  }
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/zhan430/traveblog.git'
      }
    }
    stage('Lint HTML') {
      steps {
        sh "tidy -q -e traveblog/*.html"
      }
    }
    stage('Build Docker Image') {
      steps {
        sh "sudo docker build -t zhan430/traveblog:${env.BUILD_ID}" .
      }
    }
    stage('Upload Image') {
      steps {
        script {
	    image.push("latest")
	}
      }
    }
  }
}
