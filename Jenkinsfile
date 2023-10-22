pipeline {
    agent any
    tools{
        maven 'maven3'
    }
    environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }
    stages {
        stage('Pull du code depuis GitHub') {
            steps {
                // Utiliser Git pour récupérer le code depuis GitHub
               git branch: 'main', credentialsId: 'b163f7c1-2cc5-461a-8136-9c30e2ac59f6', url: 'https://github.com/NourKalai/TP2-docker.git'
               echo 'Code GitHub récupéré avec succès !'
            }
        }
        stage('Création de limage Docker') {
            steps {
                // Utiliser Docker pour construire une image
                sh 'docker build -t nourkalai/demo .'
                echo 'Image Docker créée avec succès !'
            }
        }
        stage('Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
        }

        stage('Push de limage vers DockerHub') {
            steps {
                // Utiliser Docker pour pousser l'image vers DockerHub
                sh 'docker push nour941/springboot-app'
                echo 'Image Docker poussée vers DockerHub avec succès !'
            }
        }
    }
}
