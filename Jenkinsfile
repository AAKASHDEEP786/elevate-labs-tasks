pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', changelog: false, poll: false, url: 'https://github.com/AAKASHDEEP786/to-do-app-main.git'
            }
        }

        stage('GitLeaks Scan') {
            steps {
                sh 'gitleaks detect --source ./frontend --exit-code 1'
                sh 'gitleaks detect --source ./backend --exit-code 1'
            }
        }

        stage('OWASP Dependency Check') {
            steps {
                dependencyCheck additionalArguments: '--scan ./', odcInstallation: 'DP'
                dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
            }
        }

        stage('Trivy FS Scan') {
            steps {
                // Better JSON report for automation
                sh 'trivy fs --format json -o fs-report.json .'
                archiveArtifacts artifacts: 'fs-report.json', followSymlinks: false
            }
        }

        stage('Build-Tag & Push Docker Image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-cred') {
                        sh 'docker build -t todoapp:latest -f backend/Dockerfile .'
                        sh 'docker tag todoapp:latest aakashdevops/todoapp:latest'
                        sh 'docker push aakashdevops/todoapp:latest'
                    }
                }
            }
        }

        stage('Trivy Docker Scan') {
            steps {
                sh 'trivy image --format json -o image-report.json aakashdevops/todoapp:latest'
                archiveArtifacts artifacts: 'image-report.json', followSymlinks: false
            }
        }

        stage('Deploy to Docker') {
            steps {
                script {
                    sh 'docker rm -f todoapp || true'
                    sh 'docker run -d --name todoapp -p 4000:4000 aakashdevops/todoapp:latest'
                }
            }
        }
    }
}
