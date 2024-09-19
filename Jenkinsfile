pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    dockerImage = docker.build('ecomm')
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    dockerImage.run('-p 8000:80')  // Change port if needed
                }
            }
        }
    }
}
