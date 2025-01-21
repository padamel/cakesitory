pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Build') {
            steps {
                sh 'mkdir appbase'
            }
        }
        stage('Test'){
            steps {
                sh 'mv template appbase/'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "file added"' //
            }
        }
    }
}








