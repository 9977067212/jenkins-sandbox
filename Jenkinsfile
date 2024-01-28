pipeline {
    agent {
        label "default"
    }
    stages {
        stage('Test') {
            steps {
                echo "Starting..."
                
                withCredentials([sshUserPrivateKey(credentialsId: 'rtb-migrations-ssh', usernameVariable: 'SSH_USER', keyFileVariable: 'SSH_PRIVATE_KEY')]) {
                    sh 'chmod +x script.sh'
                    sh './script.sh'
                }
                
                echo "Finishing..."
            }
        }
    }
}
