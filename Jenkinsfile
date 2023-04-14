pipeline {
    agent any
    options {
        timestamps()
        buildDiscarder(logRotator(numToKeepStr: '10'))
        timeout(time: 1, unit: 'HOURS')
    }
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
                catchError{
                    sh 'echo ${val}'
                    //sh '~/.local/bin/robocop'
                }
            }
        }
        stage('Robot'){
            steps{
                sh 'python3 -m robot -d Results -v id:${value} Tests/example.robot'
            }
        }
    }
}
