pipeline {
    agent { label 'linux-agent' }
    environment {        
        ENV='dev'
        DOCKER_HUB_USERNAME='chehine'
        DOCKER_HUB_PASSWORD=credentials('DOCKER_HUB_PASSWORD')
        DOCKER_HUB_ACCOUNT='chehine'
    }
    stages {

        stage('Build Maven') {
            steps { sh './stages/maven/mvn.sh mvn -B -DskipTests -Dversion=$BUILD_TAG clean package' }}
        
        stage('Test Maven') {
            steps { sh './stages/maven/mvn.sh mvn test -Dversion=$BUILD_TAG' }}


        stage('Build Docker Image') {
            steps { sh './stages/build/build.sh' }}


        stage('Scan Docker Image') {
            steps { sh './stages/test/trivy.sh' }}


        stage('Publish') {
            steps { sh './stages/push/push.sh' }}        
    }
}
