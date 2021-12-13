pipeline {
  agent {
    docker { image 'node:16.13.1-alpine' }
  }
  stages {
    stage('Install dependencies') {
      steps {
        sh 'npm install'
      }
    }
    stage('Lint') {
      steps {
        sh 'ng lint'
      }
    }
    stage('Build') {
      steps {
        sh 'ng build'
      }
    }
  }
}
