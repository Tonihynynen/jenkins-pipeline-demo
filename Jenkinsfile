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
        string defaultValue: 'tester', description: 'testaaja', name: 'name'
        string defaultValue: 'robot', description: 'robotti', name: 'robot'
    }
    triggers {
        cron 'H/5 * * * *'
    }
    stages {
        stage('CodeAnalysis') {
            steps {
                dir('Tests'){
                }
                sh 'echo Testing:${name}'
                sh 'echo Testing:${robot}'
                if (name == "val"){
                    sh 'echo True'
                }
            }
        }
        stage('CheckFiles') {
            steps {
            dir('Resources') {
                fileExists 'text.txt'
            }
            }
        }
        stage('Robot'){
            steps{
                sh 'python3 -m robot -d Results -v id:${name} Tests/example.robot'
            }
        }
    }
}
