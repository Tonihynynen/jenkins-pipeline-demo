pipeline {
    agent any

    stages {
        stage('CodeAnalysis') {
            steps {
                sh 'echo $PATH'
                sh '~/.local/bin/robocop'
                dir('Tests'){
                    sh 'pwd'
                    sh 'ls -la'
                }
                sh 'ls -la'
            }
        }
    }
}
