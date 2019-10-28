pipeline {
  agent any
  environment {
    credential = 'dockerhub'
    image = ''
  }
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/gustavoapolinario/microservices-node-example-todo-frontend.git'
      }
    }
    stage('Lint HTML') {
      steps {
        sh "tidy -q -e traveblog/*.html"
      }
    }
    stage('Build Docker Image') {
      steps {
        script {
	    image = docker.build "zhan430/traveblog:${env.BUILD_ID}"
	}
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
