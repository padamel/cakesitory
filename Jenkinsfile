pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
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
                sh 'echo "file added"' //
            }
        }
    }
}








