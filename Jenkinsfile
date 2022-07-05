pipeline {
    agent any
    stages {
        stage('Initialize Infrastructure') {
            steps {
                sh "terraform init"
            }
            steps {
                sh "terraform plan"
            }
        }
        // stage('Plan Infrastructure') {
        //     steps {
        //         sh "terraform plan"
        //     }
        // }
    }   
}