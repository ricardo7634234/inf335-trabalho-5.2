pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/seu-repositorio.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build -t olaunicamp-java-app .'
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
