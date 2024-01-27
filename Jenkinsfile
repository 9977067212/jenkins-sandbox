pipeline {
    agent {
        label "default"
    }
    stages {
        stage('Test') {
            steps {
                echo "Starting..."
                
                withCredentials([sshUserPrivateKey(credentialsId: 'ssh-credentials', keyFileVariable: 'SSH_PRIVATE_KEY', usernameVariable: 'SSH_USER')]) {
                    sh 'chmod +x script.sh'
                    sh './script.sh'
                }
                
                echo "Finishing..."
            }
        }
    }
}
