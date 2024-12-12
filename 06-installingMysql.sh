#!/bin/bash
ID=$(id -u)

if [ $ID -ne 0 ]
then
echo "You are not a root user "
else
echo "You are root user"
fi


yum install mysql -y

if [ $? -ne 0 ]
then
echo "Error :Installing MySql is Filed "

else
 echo "Installing Mysql Is success"

 yum install git -y

if [ $? -ne 0 ]
then
    echo "ERROR:: Installing GIT is failed"
    exit 1
else
    echo "Installing GIT is SUCCESS"
fi