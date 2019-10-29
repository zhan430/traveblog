pipeline {
  agent any
  environment {
    mycredential = 'dockerhub'
    image = ''
  }
  stages {
    stage('Upload Image') {
      steps {
        script {
            docker.withRegistry( 'docker.io', mycredential ) {
              sh "sudo docker push zhan430/traveblog:47"
          }
        }
      }
    }
  }
}
