pipeline {
    agent any

    stages {
        stage('CodeAnalysis') {
            steps {
                sh 'echo $PATH'
                dir('Tests'){
                    sh 'pwd'
                    sh 'ls -la'
                }
                sh 'ls -la'
                // sh '~/.local/bin/robocop'
            }
        }
    }
}
