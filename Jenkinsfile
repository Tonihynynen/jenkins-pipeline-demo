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
                try{
                    sh '~/.local/bin/robocop'
                } catch (err) {
                    echo "err"
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
