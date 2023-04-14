pipeline {
    agent any

    stages {
        stage('CodeAnalysis') {
            steps {
                sh 'echo $PATH'
                sh '~/.local/bin/robocop'
            }
        }
    }
}
