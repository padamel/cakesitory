pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stage('Check Directory') {
    steps {
        script {
            if (fileExists('path/to/your/directory')) {
                echo "Directory exists, proceeding with build"
            } else {
                error "Required directory does not exist. Aborting build."
            }
        }
    }
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








