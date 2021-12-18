pipeline {
  agent any
  stages {
    stage('Install dependencies') {
      steps {
        sh 'npm install'
      }
    }
    stage('Lint') {
      steps {
        sh 'npm run lint'
      }
    }
    stage('Build') {
      steps {
        sh 'npm run build --prod'
      }
    }
    stage('Run docker'){
      steps {
        sh 'docker build --tag resumit .'
        sh 'docker run --publish 80:80 --detach resumit'
      }
    }
  }
}
