pipeline {
    agent {
        label "default"
    }
    stages {
        stage('Test') {
            steps {
                echo "Starting..."
                
                withCredentials([
                    file(credentialsId: 'rtb-migrations-private-key', variable: 'PRIVATE_SSH_KEY'),
                    file(credentialsId: 'rtb-migrations-private-key', variable: 'SSH_USER')
                ]) {
                    sh 'chmod +x script.sh'
                    sh './script.sh'
                }
                
                echo "Finishing..."
            }
        }
    }
}
