pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/venkatesh669/devops-java-project.git'
            }
        }

        stage('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t devops-java-app .'
            }
        }

        stage('Docker Run') {
            steps {
                sh 'docker run -d --name devops-app -p 8080:8080 devops-java-app'
            }
        }
    }
}

