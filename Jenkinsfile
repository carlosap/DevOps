pipeline {
	//agent any
	agent { docker { image 'maven:3.6.3' }}

	stages {
		stage('Build') {
			steps {
				sh "mvn --version"
				echo "build step2"
				echo "build step3"
			}
	  	}
		stage('Code Quality') {
			steps {
				echo "QA1"
				echo "QA2"
				echo "QA3"
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
	} 
	post {
		always {
			echo "I am running always2"
		}
		success {
			echo 'I run when you are success'
		}
		failure {
			echo 'I run when you failed'
		}
	}
}
