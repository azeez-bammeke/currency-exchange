pipeline {
	agent any
	    tools {
	        maven 'maven'
	            jdk 'JDK17'
	    }
    stages {
            stage('Build Maven') {
                steps {
                       sh 'pwd'
                       sh 'mvn clean install package'
                }
            }
            stage('Copy Artifact') {
                steps {
                       sh 'pwd'
                       sh 'cp -r target/*.jar docker'
                }
            }

            stage('Build docker image') {
                            steps {
                                    // script {
                                    //         def customImage = docker.build('currency-exchange')
                                    //         docker.withRegistry('https://acrdevwebnet.azurecr.io', 'acr-wbnet-app') {
                                    //             customImage.push("${env.BUILD_NUMBER}")
                                    //     }
                                    // }
                            }
            }
    }
}
