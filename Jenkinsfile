pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Check Directory') {
            steps {
                script {
                    if (fileExists('appservice')) {
                        echo "Directory exists, proceeding with build"
                    } else {
                        error "Required directory does not exist. Aborting build."
                    }
                }
            }
        }
        stage('Build') {
            steps {
                sh 'mkdir appservice'
            }
        }
        stage('Test'){
            steps {
                sh 'touch file1'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "file added"'
            }
        }
    }
}








