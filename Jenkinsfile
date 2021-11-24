pipeline {
    agent any 
    stages {
        stage('compile and clean') { 
            steps {
                sh "mvn clean compile"
            }
        }
        stage('Test') { 
            steps {
                sh "mvn test"
            }
        }
        stage('Deploy') { 
            steps {
                sh "mvn  package "
            }
            post{
                always{
                    junit allowEmptyResults: true, testResults:'target/surefire-reports/*.xml'
                }
            }
                
           
        }
        stage('Archving') { 
            steps {
                archiveArtifacts '**/target/*.jar'
            }
        }
    }
}
