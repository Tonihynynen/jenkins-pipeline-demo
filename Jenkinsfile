pipeline {
    agent any

    stages {
        stage('CodeAnalysis') {
            steps {
                sh 'pwd'
                sh '~/home/jenkins/.local/bin/robocop'
            }
        }
    }
}
