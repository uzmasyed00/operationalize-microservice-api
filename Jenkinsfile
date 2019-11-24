node{
    def dockerImage
    stage('Trying Scripted Pipleine'){
        sh 'echo "I am going to run scripted pipeline"'
    }
    stage('Linting files in the pipeline'){
        sh 'echo "I am going to lint files in the pipeline"'
    }
    stage('Build Docker image'){
        sh 'echo "I am going to build Docker image"'
        dockerImage = docker.build("flask-web-app:${env.BUILD_ID}")
    }
}