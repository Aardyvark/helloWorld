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
      stage('Compiling') {
          agent { docker 'maven:3-alpine' }
          steps {
              echo 'Compiling'
              sh 'mvn compile'
          }
      }
      stage('Unit tests') {
          agent { docker 'maven:3-alpine' }
          steps {
              echo 'Unit tests'
              sh 'mvn test'
          }
      }
      stage('Packaging') {
          agent { docker 'maven:3-alpine' }
          steps {
              echo 'Packaging'
              sh 'mvn package'
          }
      }
    }
}
