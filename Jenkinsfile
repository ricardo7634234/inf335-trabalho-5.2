pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ricardo7634234/inf335-trabalho-5.2/'
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
