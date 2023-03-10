#!/bin/bash
echo "installing behave"
python_install()
{
       sudo apt install python3 -y
       if [ $? -ne 0 ]; then
                echo "error while installing behave"
       fi
       echo "python installed successfully"
}
behave_install()
{
       sudo apt install python3-behave -y
       if [ $? -ne 0 ]; then
                echo "error while installing behave"
       fi
       echo "behave installed successfully"
}
cleanup_workspace()
{
echo "removing old behave files"
sudo rm -r /var/lib/jenkins/workspace/behind/features
if [ $? -ne 0 ]; then
echo " error while removing"
fi
echo "behave files removed successfulyy"
}
behave_steps()
{
        echo "steps to run BDD"
        sudo mkdir -p /var/lib/jenkins/workspace/behind/features/steps
        sudo cp -r ./test.feature /var/lib/jenkins/workspace/behind/features
        sudo cp -r ./test.py /var/lib/jenkins/workspace/behind/features/steps
        cd /var/lib/jenkins/workspace/behind
        behave     
}
python_install
behave_install
cleanup_workspace
behave_steps

  
  
              
     
     

