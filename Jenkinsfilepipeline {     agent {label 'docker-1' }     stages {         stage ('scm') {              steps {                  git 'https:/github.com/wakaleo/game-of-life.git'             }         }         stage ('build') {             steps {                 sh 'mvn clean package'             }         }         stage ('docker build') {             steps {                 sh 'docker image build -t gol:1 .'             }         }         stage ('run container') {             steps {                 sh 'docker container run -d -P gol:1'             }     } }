pipeline {
    agent {label 'docker-1' }
    stages {
        stage ('scm') { 
            steps { 
                git 'https://github.com/wakaleo/game-of-life.git'
            }
        }
        stage ('build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage ('docker build') {
            steps {
                sh 'docker image build -t gol:1 .'
            }
        }
        stage ('run container') {
            steps {
                sh 'docker container run -d -P gol:1'
            }
    }
}
