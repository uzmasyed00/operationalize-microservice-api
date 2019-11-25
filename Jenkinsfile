node{
    def dockerImage
    environment {
        registry = "https://hub.docker.com/repository/docker/uzmasyed00/capstone"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }

    stage('Trying Scripted Pipleine'){
        sh 'echo "I am going to run scripted pipeline"'
    }
    stage('Linting files in the pipeline'){
        sh 'echo "I am going to lint files in the pipeline"'
    }
    stage('Build Docker image'){
        sh 'echo "I am going to build Docker image"'
        dockerImage = docker.build registry + ":$BUILD_NUMBER"
    }
    stage('Upload Docker image to Dockerhub'){
        sh 'echo "I am going to upload Docker image to registry"'
        docker.withRegistry('https://hub.docker.com/repository/docker/uzmasyed00/capstone', 'dockerhub') {
            //dockerImage.push("${env.BUILD_NUMBER}")
            dockerImage.push()
        }
    }
}