pipeline {
    agent {
        label "default"
    }
    stages {
        stage('Test') {
            steps {
                echo "Starting..."
                
                withCredentials([
                    file(credentialsId: 'rtb-migrations-ssh-private-key', variable: 'SSH_PRIVATE_KEY'),
                    file(credentialsId: 'rtb-migrations-ssh-user', variable: 'SSH_USER')
                ]) {
                    sh 'chmod +x script.sh'
                    sh './script.sh'
                }
                
                echo "Finishing..."
            }
        }
    }
}
