pipeline {
    agent none
    stages {
        stage('Environment') {
            agent any
            steps {
                sh('printenv')
            }
        }
/*        stage('Compiling') {
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
        stage('Publish') {
            agent { docker 'maven:3-alpine' }
            steps {
              echo 'Publish'
              sh 'mvn docker:push'
            }
        }
*/        
        stage('Build / Publish') {
            agent { docker 'maven:3-alpine' }
            stages {
                stage('Build') {
                    steps {
                      echo 'Packaging'
                      sh 'mvn clean package'
                    }
                }
                stage('Publish') {
                    steps {
                      echo 'Publish'
                      sh 'mvn docker:push'
                    }
                }
            }
        }
    }
}
