pipeline {
    agent any
    stages {
        // stage('Initialize Infrastructure') {
        //     steps {
        //         sh "terraform init"
        //     }
        // }
        // stage('Plan Infrastructure') {
        //     steps {
        //         sh "terraform plan"
        //     }
        // }
        // stage('Create Infrastructure') {
        //     steps {
        //         sh "terraform apply -auto-approve"
        //     }
        // }
        stage('Destroy Infrastructure') {
            steps {
                sh "terraform destroy -auto-approve"
            }
        }
    }    
}