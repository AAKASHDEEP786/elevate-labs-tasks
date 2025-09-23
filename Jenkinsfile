pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', changelog: false, poll: false, url: 'https://github.com/AAKASHDEEP786/to-do-app-main.git'
            }
        }

        stage('OWASP Dependency Check') {
            steps {
                dependencyCheck additionalArguments: '--scan ./', odcInstallation: 'DP'
                dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    withDockerRegistry(credentialsId: '9ea0c4b0-721f-4219-be62-48a976dbeec0') {
                        sh "docker build -t todoapp:latest -f docker/Dockerfile ."
                        sh "docker tag todoapp:latest <your-dockerhub-username>/todoapp:latest"
                    }
                }
            }
        }

        stage('Docker Push') {
            steps {
                script {
                    withDockerRegistry(credentialsId: '9ea0c4b0-721f-4219-be62-48a976dbeec0') {
                        sh "docker push <your-dockerhub-username>/todoapp:latest"
                    }
                }
            }
        }

        stage('Trivy Scan') {
            steps {
                sh "trivy <your-dockerhub-username>/todoapp:latest"
            }
        }

        stage('Deploy to Docker') {
            steps {
                script {
                    sh "docker rm -f to-do-app || true" // Remove old container if exists
                    sh "docker run -d --name to-do-app -p 4000:4000 <your-dockerhub-username>/todoapp:latest"
                }
            }
        }
    }
}
