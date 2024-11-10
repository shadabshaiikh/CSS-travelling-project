pipeline {
    agent any
    
    stages {
        stage('Git Checkout') {
            steps {
               git branch: 'jenkins', credentialsId: 'git-cred', url: 'https://github.com/shadabshaiikh/welcome-traveler.git'
            }
        }
        
        stage('Build & Tag Docker Image') {
            steps {
               script {
                   withDockerRegistry(credentialsId: 'docker-cred', toolName: 'docker') {
                            sh "docker build -t shadabsk/travelling-app:latest ."
                    }
               }
            }
        }
        
        stage('Push Docker Image') {
            steps {
               script {
                   withDockerRegistry(credentialsId: 'docker-cred', toolName: 'docker') {
                            sh "docker push shadabsk/travelling-app:latest"
                    }
               }
            }
        }
        
                stage("Deploy"){
                steps{
                    echo "Deploying the container"
                    sh "docker-compose down && docker-compose up -d"

                }
            }

    }
}
