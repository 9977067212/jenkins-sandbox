pipeline {
    agent {
        label "default"
    }
    stages {
        stage('Test') {
            steps {
                echo "Starting..."
                
                withCredentials([
                    [$class: 'VaultTokenCredentialBinding', credentialsId: 'approle-dsp-rtb', vaultAddr: 'https://vault.ms.eskimi.com'],
                    [$class: 'VaultTokenCredentialBinding', credentialsId: 'test', vaultAddr: 'https://vault.ms.eskimi.com'],
                    file(credentialsId: 'rtb-migrations-ssh-private-key', variable: 'SSH_PRIVATE_KEY'),
                    string(credentialsId: 'rtb-migrations-ssh-user', variable: 'SSH_USER')
                ]) {
                    sh 'chmod +x script.sh'
                    sh './script.sh'
                }
                
                echo "Finishing..."
            }
        }
    }
}
