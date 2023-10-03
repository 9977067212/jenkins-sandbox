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
                sleep 10

                script {
                    println(Jenkins.instance.queue.items)
                    error("Aborting this job, because there are other jobs in the queue from this PR!")
                }

                echo "Running QA tests..."
            }
        }
    }
}
