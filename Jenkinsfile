pipeline {
  agent any
  environment {
    mycredential = 'dockerhub'
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
        sh "sudo docker build -t zhan430/traveblog:${env.BUILD_ID} ."
      }
    }
    stage('Upload Image') {
      steps {
        sh '''
          sudo docker login -u zhan430 -p zxy01115102
          sudo docker push zhan430/traveblog:${env.BUILD_ID}
        '''
      }
    }
  }
}
