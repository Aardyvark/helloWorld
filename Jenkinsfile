pipeline {
    agent none
    stages {
      stage('Test') {
        agent any
        steps {
          sh('printenv')
        }
      }
//      stage('Docker') {
//        agent {
//          docker { image 'node:7-alpine' }
//        }
//        steps {
//          sh 'node --version'
//        }
//      }
      stage('Build') {
          agent { docker 'maven:3-alpine' }
          steps {
              echo 'Building using Maven'
              sh 'mvn --version'
              sh 'mvn package'
          }
      }
    }
}
