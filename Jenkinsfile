pipeline {
    agent any
    
    stages{
    
    stage('Preparation') { // for display purposes
        // Get some code from a GitHub repository
        steps{
            
            // checkout(   [$class: 'GitSCM', 
            //          branches: [[name: '*/master']], 
            //          extensions: [], userRemoteConfigs: 
            //          [[credentialsId: 'jenkins_key', 
            //          url: 'https://github.com/mickymots/dataset-microservice']]])

            echo 'listing file in the build workspace'

            sh 'ls'
        }
    }
    
    stage('Build') {
        
        steps{
            echo 'Building Project!'
        }
    }
    
    stage('Test'){
        
         steps{
            echo 'Testing Project!'
        }
        
    }
    
    stage('Package'){
        
         steps{
            echo 'Packaging Project!'
        }
        
    }
    
    stage('Deploy'){
        
         steps{
            echo 'Deploying Project!'
        }
        
    }
    
    }
    
    
}
