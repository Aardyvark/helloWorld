pipeline {
//    agent none
    agent { docker 'maven:3-alpine' }
    stages {
        stage('Environment') {
            agent any
            steps {
                sh('printenv')
            }
        }
        stage('Build / Publish') {
  //          agent { docker 'maven:3-alpine' }
            stages {
                stage('Build') {
                    steps {
                      echo 'Packaging'
                      //sh 'mvn clean package'
                      sh 'mvn -Dmaven.test.failure.ignore=true install'
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
        post {
            always {
              //archive "target/**/*"
              junit 'target/surefire-reports/**/*.xml'
            }
        }
    }
}
