#!/bin/bash


ID=$(id -u)

VALIDATE(){
      

      if [ $1 -ne 0]
      then 
          echo "Error :: $2 .......Failed"
          exit 1
      else
          echo "$2 ........Success"
    fi
}

if[ $ID -ne 0 ]
then
echo "You are not a root user you have no access to Install"
exit 1
else
echo "You are Root user Time Guard"
fi
yum install mysql -y

VALIDATE $? "Installing MySQL"

yum install git -y

VALIDATE $? "Installin Git"