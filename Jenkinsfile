pipeline {
    agent any
    stages {
        stage('Initialize Infrastructure') {
            steps{
                sh "terraform init"
            }
        }
        stage('Plan Infrastructure') {
            steps{
                sh "terraform plan"
            }
        }
    }   
}