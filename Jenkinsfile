pipeline {
	agent any
	//agent { docker { image 'node:13.8'} }
	//agent { docker { image 'maven:3.6.3'} }

	stages {
		stage('Build') {
			steps {
				// "node --version"
				//sh "mvn --version"
				echo "Path - $PATH"
				echo "Build Number - $env.BUILD_NUMBER"
				echo "Build Tag - $env.BUILD_TAG"
				echo "Build URL - $env.BUILD_URL"
			}
	  	}
		stage('Yarn') {
			steps {
				echo "Yarn1"

			}
	  	}
		stage('Code Lint') {
			steps {
				echo "Lint1"
			}
	  	}
		stage('Code Quality') {
			steps {
				echo "Code Quality"
			}
	  	}
		//Testing smallest units or modules individually.
		stage('Unit Test') {
			steps {
				echo "Unit Test"
			}
	  	}
		// Testing integration of two or more units/modules combined for performing tasks (Web)
		stage('Integration Test (web)') {
            parallel {
                stage('In Parallel 1') {
                    steps {
                        echo "In Parallel 1"
                        }
                    }
                    stage('In Parallel 2') {
                        steps {
                            echo "In Parallel 2"
                        }
                    }
            }
	  	}
		stage('Build Android') {
			steps {
				echo "build the apk"
				echo "build the ios"
			}
	  	}
		//Testing the behavior of the application as per the requirement.
	 	stage('Functional Test (native)') {
			steps {
				echo "appeium"
			}
	  	}
	 	stage('Deploy Artifact') {
			steps {
				echo "jfrog"
				echo "airWatch"
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
