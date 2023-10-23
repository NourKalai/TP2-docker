pipeline{
    agent any
    tools{
        maven 'maven3'
    }
    environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }
    stages{
        stage("getting code") {
            steps {
               git branch: 'main', credentialsId: 'b163f7c1-2cc5-461a-8136-9c30e2ac59f6', url: 'https://github.com/NourKalai/TP2-docker.git'
               echo 'Code GitHub récupéré avec succès !'
                sh "ls -ltr"
            }
        }

       //build de l'image
         stage("creation de image"){
            steps {                
                script {
                    echo "======== executing ========"
                        // sh "mvn clean package"
            
                        // sh "docker build -t devopstp ."
                        sh"docker build ."
                       }            
                        }
                    } 
     
        stage("push to docker hub") {
            steps {                
                script {
                    echo "======== executing ========"
                        
                        sh "pwd"
                        sh "ls"
                        echo "push to hub"
                        sh 'docker push nour941/springboot-app'
                        echo 'Image Docker poussée vers DockerHub avec succès !'
                           }        
                        }
                    }              
                }
            post{
                success{
                    echo "======== Setting up infra executed successfully ========"
                }
                failure{
                    echo "======== Setting up infra execution failed ========"
                }
            }
             
        }        
