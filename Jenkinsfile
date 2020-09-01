pipeline {
    agent any
    tools {
        maven 'M2_HOME'
    }
    stages {
        
        stage('build') {
            steps {
                echo 'Hello World'
                sh 'mvn clean'
                sh 'mvn install'
                sh 'mvn package'
            }
        }
    stage('test') {
            steps {
                sh 'mvn test'      
            }
        }
    stage ('build and publish image') {
  steps {
    script {
          checkout scm
          docker.withRegistry('', 'DockerRegisteryID') {
          def customImage = docker.build("vanessatchinda/hol-pipeline:${env.BUILD_ID}")
          def customImage1 = docker.build("vanessatchinda/hol-pipeline")
          customImage.push()
          customImage1.push()
          }
    }
    }
}
    }
}
