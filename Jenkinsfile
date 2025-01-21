pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Build') {
            steps {
                sh 'rm -r template'
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








