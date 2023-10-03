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
                    print(env.GIT_URL)
                    print(env.CHANGE_ID)
                    
                    // Get the list of queued items
                    def queuedItems = Jenkins.instance.queue.items

                    // Print information about each queued item
                    queuedItems.each { item ->
                        print(item)
                        echo "Queued Item ID: ${item.id}"
                        echo "Queued Item Task Name: ${item.task.name}"
                        echo "Queued Item Cause: ${item.getCauses()[0]?.shortDescription}"
                    }
                    
                    error("Aborting this job, because there are other jobs in the queue from this PR!")
                }

                echo "Running QA tests..."
            }
        }
    }
}
