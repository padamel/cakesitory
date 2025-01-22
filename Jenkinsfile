pipeline {
    agent any
    
    stages {
        stage('Check Directory') {
            steps {
                script {
                    if (fileExists('appservice')) {
                        echo "Directory 'appservice' exists. Return code 0."
                    } else {
                        error "Directory 'appservice' does not exist. Aborting pipeline."
                    }
                }
            }
        }
        stage('Subsequent Stage') {
            steps {
                echo "This stage will only run if the directory exists."
            }
        }
        stage('Build') {
            steps {
                sh 'mkdir -p appservice'
            }
        }
        stage('Test') {
            steps {
                sh 'touch file1'
            }
        }
        stage('Deploy') {
            steps {
                echo "file1 added"
            }
        }
    }
    
    post {
        always {
            script {
                currentBuild.result = currentBuild.result ?: 'SUCCESS'
            }
        }
    }
}











