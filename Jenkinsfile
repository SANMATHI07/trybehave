pipeline{
    agent any
    stages{
      stage(BDD){
        steps{
            echo "BDD testing"
            sh "chmod +x ./behave.sh"
            sh "./behave.sh"
        }
      }
    }
}
    

