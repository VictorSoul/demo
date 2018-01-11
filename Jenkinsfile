pipeline {
    agent any

    stages {
    	stage('Sonar') {
            steps {
            sh 	'''#!/bin/bash -ilex
           		   sudo mvn -version
           	'''
            }
        }
        stage('Package') {
            steps {
              sh 'mvn clean package'
              sh 'mv -u target/demo-0.0.1-SNAPSHOT.war  docker/demo.war'
            }
        }
        stage('Build') {
            steps {
             sh "docker build -t demo:${GIT_BRANCH} docker/"
        	}
        }
        stage('Push') {
            steps {
             sh "docker tag demo:${GIT_BRANCH} docker.registry.cscloud.com/demo:${GIT_BRANCH} "
             sh "docker push docker.registry.cscloud.com/demo:${GIT_BRANCH}"
            }
        }
    }
}