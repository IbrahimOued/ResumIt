pipeline {
  agent { dockerfile true }
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
