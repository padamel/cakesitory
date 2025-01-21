pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Build') {
            steps {
                sh 'mkdir template'
            }
        }
        stage('Test'){
            steps {
                sh 'make check'
                junit 'cd /template'
            }
        }
        stage('Deploy') {
            steps {
                sh 'deploy' //
            }
        }
    }
}








