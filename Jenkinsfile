pipeline {
    agent any
    stages {
        stage('Create Infrastructure') {
            steps{
                sh "terraform init"
                sh "terraform plan"
                sh "terraform apply"
            }
        }
    }    
}