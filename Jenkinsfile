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
    parameters {
        string defaultValue: 'testing1', description: 'value1', name: 'name'
    }
    stages {
        stage('CodeAnalysis') {
            steps {
                dir('Tests'){
                }
                sh 'echo Testing:${params.name}'
            }
        }
        stage('Robot'){
            steps{
                sh 'python3 -m robot -d Results -v id:${params.name} Tests/example.robot'
            }
        }
    }
}
