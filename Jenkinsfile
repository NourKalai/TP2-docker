pipeline {
    agent any
    stages{
        stage('Git Checkout'){
            steps{
                git branch: 'main', credentialsId: 'github-user', url: 'https://github.com/NourKalai/TP2-docker.git'

            }
        }
    }
}