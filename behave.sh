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
       sudo rm -r /var/lib/jenkins/workspace/behavefile
       if [ $? -ne 0 ]; then
                echo "error while removing behave files"
       fi
       echo "behave files removed successfully"
}

python_install
behave_install
cleanup_workspace

  
  
              
     
     

