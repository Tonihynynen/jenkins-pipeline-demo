pipeline {
    agent any
    environment {
        value = "random123"
    }
    stages {
        stage('CodeAnalysis') {
            steps {
                sh 'echo $PATH'
                dir('Tests'){
                    sh 'pwd'
                    sh 'ls -la'
                }
                sh 'echo Testing:${value}'
                // sh '~/.local/bin/robocop'
            }
        }
        stage('Robot'){
            steps{
                sh 'python3 -m robot -d Results -v id:test Tests/example.robot'
            }
        }
    }
}
