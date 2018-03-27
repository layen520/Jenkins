pipeline {
  agent {
    docker {
      image 'nginx'
    }
    
  }
  stages {
    stage('test') {
      steps {
        sh 'sh whoami'
      }
    }
  }
  environment {
    test = 'test'
  }
}