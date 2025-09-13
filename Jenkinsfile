pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ricardo7634234/inf335-trabalho-5.2.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Reutilizar camadas da imagem anterior
                    bat '''
                        docker build -t olaunicamp-java-app:latest .
                    '''
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    bat 'docker run --rm olaunicamp-java-app'
                }
            }
        }
    }
}
