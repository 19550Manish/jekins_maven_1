pipeline {
    agent any 
    stages {
        stage('compile and clean') { 
            steps {
                sh "mvn clean compile"
            }
        }
      
        stage('Deploy') { 
            steps {
                sh "mvn  package "
            }
        }
        stage('Build & Docker Image') { 
            steps {
                sh "docker build -t manish19550/jenkins_docker_myapp:${BUILD_NUMBER} ."
            }
        }
        stage('Docker login') { 
            steps {
                sh "docker login -u manish19550 -p free@19550"
            }
        }
         stage('push to repository') { 
            steps {
                sh "docker push manish19550/jenkins_docker_myapp:${BUILD_NUMBER} ."
            }
        }
        stage('Archving') { 
            steps {
                archiveArtifacts '**/target/*.jar'
            }
        }
    }
}
