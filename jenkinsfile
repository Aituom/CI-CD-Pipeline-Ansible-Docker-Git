pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Aituom/CI-CD-Pipeline-Ansible-Docker-Git'
            }
        }

        stage('Test HTML') {
            steps {
                sh 'tests/test_html.sh'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'scripts/build.sh'
            }
        }

        stage('Deploy with Ansible') {
            steps {
                sh 'scripts/deploy.sh'
            }
        }

        stage('Notify by Email') {
            steps {
                sh 'notify/mail.sh'
            }
        }
    }
}
