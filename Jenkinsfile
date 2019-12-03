pipeline {
    //def dockerImage
    //def registry
    environment {
        registry = "uzmasyed00/capstone"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }
    agent any

    stages {
        /*stage('Linting project files') {
            steps {
                //sh 'tidy -q -e *.html'
                //sh 'pylint app.py'
                //sh 'hadolint Dockerfile'
                //sh 'python -v'
                script{
                    sh 'echo 'I am going to lint relevant project files''
                }
            }
        }*/

        stage('Build docker image') {
            steps{
                script {
                    dockerImage = docker.build registry + ":latest"
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

        stage('Deploying to EKS') {
            steps {
                script {
                    withAWS(credentials: 'kubernetes-credentials', region: 'us-east-2') {
                        sh 'pip3 install --upgrade awscli'
                        sh 'aws eks --region us-east-2 update-kubeconfig --name uzmasyed00-eks-cluster'
                        sh 'kubectl apply -f /home/ubuntu/.kube/helloworld.yaml'
                    }
                }
            }
        }
    }
}
