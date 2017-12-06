pipeline {
    agent any

    stages {
        stage('Package') {
            steps {
              sh 'mvn clean package'
            }
        }
        stage('Build') {
            steps {
             sh "docker build -t demo:${GIT_BRANCH} ."
            }
        }
        stage('Push') {
            steps {
             sh "docker tag 10.39.201.68:5000/demo:${GIT_BRANCH} demo:${GIT_BRANCH}"
             sh "docker push 10.39.201.68:5000/demo:${GIT_BRANCH}"
            }
        }
    }
}