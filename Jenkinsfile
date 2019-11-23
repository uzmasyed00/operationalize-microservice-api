pipeline {
    agent { dockerfile true }
    stages {
        stage('Linting project files') {
            steps {
                //sh 'tidy -q -e *.html'
                sh 'pylint app.py'
                sh 'hadolint Dockerfile'
            }
        }
        /*stage('Build docker image') {
            steps {
                sh 'Going to build docker image'
                //withAWS(credentials:'aws-static') {
                //s3Upload(file:'index.html', bucket:'jenkins-pipeline-project3', path:'index.html')
            }

        }

        stage('Deploy application in Docker container') {
            steps {
                sh 'Going to deploy Docker container'
            }
        }*/
    }
}