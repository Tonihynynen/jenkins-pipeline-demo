pipeline {
    agent any

    stages {
        stage('CodeAnalysis') {
            steps {
                sh 'pwd'
                sh '~/.local/bin/robocop'
            }
        }
    }
}
