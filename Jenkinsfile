pipeline {
    agent any
    
    stages {
        stage('Check Directory') {
            steps {
                script {
                    if (fileExists('appservice')) {
                        echo "Directory 'appservice' exists. Return code 0."
                    } else {
                        error "Directory 'target_directory' does not exist. Aborting pipeline."
                    }
                }
            }
        }
        
        stage('Build') {
            steps {
                sh 'mkdir appservice'
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
}










