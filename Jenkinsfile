pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Build') {
            steps {
                sh 'build'
            }
        }
        stage('Test'){
            steps {
                sh 'make check'
                junit 'mkdir template'
            }
        }
        stage('Deploy') {
            steps {
                sh 'deploy' //
            }
        }
    }
}








