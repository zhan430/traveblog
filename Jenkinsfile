pipeline {
  agent any
  environment {
    credential = 'dockerhub'
    image = ''
  }
  stages {
    stage('Upload Image') {
      steps {
        script {
            docker.withRegistry( '', credential ) {
              sh "sudo docker push zhan430/traveblog"
          }
        }
      }
    }
  }
}
