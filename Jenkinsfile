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
                    println(env.CHANGE_ID)
                    error("Aborting this job, because there are other jobs in the queue from this PR!")
                }

                echo "Running QA tests..."
            }
        }
    }
}
