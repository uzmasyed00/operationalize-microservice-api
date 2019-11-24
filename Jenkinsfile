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
    stage('Upload Docker image to Dockerhub'){
        sh 'echo "I am going to build Docker image"'
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            app.push("${env.BUILD_NUMBER}")
            //app.push("latest")
    }
}