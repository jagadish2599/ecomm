pipeline {
    agent any
    
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-repo/project.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ecomm .'
            }
        }
        
        stage('Push Docker Image') {
            steps {
                withCredentials([string(credentialsId: 'dockerhub-credentials', variable: 'DOCKER_PASSWORD')]) {
                    sh 'echo $DOCKER_PASSWORD | docker login -u your-dockerhub-username --password-stdin'
                    sh 'docker push your-dockerhub-username/your-image-name'
                }
            }
        }
        
        stage('Deploy to EC2') {
            steps {
                sshagent(['ec2-ssh-key']) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no ec2-user@your-ec2-public-ip \
                        "docker pull your-dockerhub-username/your-image-name && docker run -d -p 80:80 your-dockerhub-username/your-image-name"
                    '''
                }
            }
        }
    }
}
