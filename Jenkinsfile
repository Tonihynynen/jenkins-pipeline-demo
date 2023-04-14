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
                script {
                    if (name == "val"){
                        sh 'echo True'
                    }
                }
            }
        }
        stage('CheckFiles') {
            steps {
            dir('Resources') {
                fileExists 'text.txt'
                script {
                    if (fileExists('text.txt'))
                    {
                        echo "file exists!"
                    } else {
                        echo "file does not exist!"
                    }
                }
            }
            }
        }
        stage('Robot'){
            steps{
                sh 'python3 -m robot -d Results -v id:${name} Tests/example.robot'
            }
        }
        stage ('CodeAnalyze And Run') {
            parallel {
                stage('Analyze Files'){
                    steps{
                         sh '~/.local/bin/robocop'
                        sh 'echo Test'
                    }
                }
                stage ('Code'){
                    steps{
                        script {
                            if (name == "val"){
                                sh 'python3 -m robot -d Results -v IDENTIFIER:${robot} Tests/example.robot'
                            }
                            }
                        sh 'python3 -m robot -d Results -v id:${robot} Tests/example.robot'
                    }
                }
            }
        }
    }
    post{
        always {
            robot archiveDirName: 'robot-plugin', outputPath: 'Results', overwriteXAxisLabel: '', passThreshold: 100.0, unstableThreshold: 100.0
        }
    }
}
