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
                sh ''
                junit 'reports/**/*.xml'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "file added"' //
            }
        }
    }
}








