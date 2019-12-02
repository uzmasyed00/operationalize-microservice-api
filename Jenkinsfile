pipeline {
    //def dockerImage
    //def registry
    environment {
        registry = "https://hub.docker.com/repository/docker/uzmasyed00/capstone"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }
    agent { dockerfile true }

    stages {
        stage('Linting project files') {
            steps {
                //sh 'tidy -q -e *.html'
                //sh 'pylint app.py'
                //sh 'hadolint Dockerfile'
                //sh 'python -v'
                script{
                    sh 'echo 'I am going to lint relevant project files''
                }
            }
        }

        /*stage('Create Kubernetes cluster in AWS') {
            steps {
                sh 'echo 'I am going to create cluster using EKS''
                sh 'eksctl create cluster --name trial ' +
                        '--version 1.14 --region us-west-2 ' +
                        '--nodegroup-name standard-workers ' +
                        '--node-type t3.medium ' +
                        '--nodes 3 --nodes-min 1 ' +
                        '--nodes-max 4 --managed'
            }
        }

        stage('Store Kubernetes cluster config') {
            steps {
                sh 'echo 'I am going to store cluster config''

            }
        }*/

        stage('Build docker image') {
            steps{
                script {
                    docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }

        stage('Deploy Image to Dockerhub') {
            steps{
                script {
                    docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
