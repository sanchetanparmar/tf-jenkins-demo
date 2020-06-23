pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh 'sudo rm -r *;sudo git clone https://github.com/sanchetanparmar/tf-jenkins-demo.git'
            }
        }
        stage('copy vars') {
           steps {
               sh 'sudo cp /home/ubuntu/vars.tf ./tf-jenkins-demo'
            }
        }
        stage('terraform init') {
            steps {
                sh 'sudo terraform init ./tf-jenkins-demo'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./tf-jenkins-demo; sudo terraform plan ./tf-jenkins-demo'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
