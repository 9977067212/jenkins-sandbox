pipeline {
    agent { 
        node {
            label 'built-in'
        }
    }
    stages {
        stage('Test') {
            steps {
                echo "Testing..."
                sleep 5

                script {
                    error("Clearing the queue!")
                }
            }
        }
    }
}
