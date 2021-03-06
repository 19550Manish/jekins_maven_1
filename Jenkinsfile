pipeline {
    agent any 
    stages {
        stage('Compile and clean') { 
            steps {
                sh "mvn clean compile"
            }
        }
        
        stage('Test') { 
            steps {
                sh "mvn test -f jenkins_pipeline_1"
            }
             post{
                always{
                    junit allowEmptyResults: true, testResults:'target/surefire-reports/*.xml'
                }
            }
        }
      
        stage('Deploy') { 
            steps {
                sh "mvn -f jenkins_pipeline_1 package "
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
         stage('Push to repository') { 
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
