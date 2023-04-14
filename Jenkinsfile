pipeline {
    agent any

    stages {
        stage('CodeAnalysis') {
            steps {
                sh 'echo $PATH'
                sh '~/.local/bin/robocop'
                dir('${env.WORKSPACE}/Tests'){
                    sh 'pwd'
                    sh 'ls -la'
                }
                sh 'ls -la'
            }
        }
    }
}
