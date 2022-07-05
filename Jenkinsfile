pipeline {
    agent any
    stages {
        stage('Initialize Infrastructure') {
            steps {
                sh "terraform init"
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