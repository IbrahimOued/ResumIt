// pipeline {
//   agent { dockerfile true }
//   stages {
//     stage('Install dependencies') {
//       steps {
//         sh 'npm install'
//       }
//     }
//     stage('Lint') {
//       steps {
//         sh 'ng lint'
//       }
//     }
//     stage('Build') {
//       steps {
//         sh 'ng build'
//       }
//     }
//   }
// }

pipeline {
  agent {
    docker { image 'node:16.13.1-alpine' }
  }
  stages {
    stage('Test') {
      steps {
          sh 'node --version'
      }
    }
  }
}
