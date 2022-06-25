pipeline {
    agent any
    environment {
        PATH = "/opt/apachemaven/bin:$PATH"
    }
    stages {
        // stage('SCM Checkout') {
        //     steps {
        //         git branch: 'main', credentialsId: 'GITHUB', url: 'git@github.com:jaggugithub/webappinfra.git'
        //     }
        // }
        stage('Create Infrastructure') {
            steps{
                sh "terraform init"
                sh "terraform plan"
                sh "terraform apply"
            }
        }
    }    
}