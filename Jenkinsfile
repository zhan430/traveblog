pipeline {
  agent any
  environment {
    credential = 'dockerhub'
    image = ''
  }
  stages {
    stage('Upload Image') {
      steps {
        sh "sudo docker push zhan430/traveblog${env.BUILD_ID}"
      }
    }
  }
}
