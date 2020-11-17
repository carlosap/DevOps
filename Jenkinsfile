pipeline {
	agent any

	stages {
		stage('Build') {
			steps {
				echo "build step1"
				echo "build step2"
				echo "build step3"
			}
	  	}
		stage('Test') {
			steps {
				echo "Test1"
				echo "Test2"
				echo "Test3"
			}
	  	}
		stage('Integration Test') {
			steps {
				echo "Integration Test1"
				echo "Integration Test2"
				echo "Integration Test3"
			}
	  	}
	} post {
		always {
			echo "I am running always"
		}
		success {
			echo 'I run when you are success'
		}
		failure {
			echo 'I run when you failed'
		}
	}
}
