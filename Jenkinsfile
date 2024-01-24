pipeline {
    agent {
        label "default"
    }
    stages {
        stage('Test') {
            steps {
                script {
                    echo "Starting..."
                    
                    withCredentials([
                        file(credentialsId: 'rtb-migrations-private-key', variable: 'PRIVATE_SSH_KEY'),
                        file(credentialsId: 'rtb-migrations-private-key', variable: 'KEY')
                    ]) {
                        sh 'chmod +x script.sh'
                        sh './script.sh'
                    }
                    
                    echo "Finishing..."
                }
            }
        }
    }
}
