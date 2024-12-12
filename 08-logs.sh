#!/bin/bash

# Get User ID
ID=$(id -u)

# Define Color Codes
R="\e[31m" # Red
G="\e[32m" # Green
N="\e[0m"  # Reset

# Generate Timestamp and Log File Path
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$(basename $0)-$TIMESTAMP.log"

# Log Start
echo "Script started executing at $TIMESTAMP" >> $LOGFILE

# Validation Function
VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo -e "ERROR:: $2 ... $R FAILED $N" &>> $LOGFILE
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $N" &>> $LOGFILE
    fi
}

# Check Root Privileges
if [ $ID -ne 0 ]; then
    echo -e " $R ERROR ::: Please run this script with root access $N" &>> $LOGFILE
    exit 1
else
    echo -e " $G You are root user 😊😊 $N" &>> $LOGFILE
fi

# Install MySQL
yum install mysql -y &>> $LOGFILE
VALIDATE $? "Installing MySQL"

# Install Git
yum install git -y &>> $LOGFILE
VALIDATE $? "Installing GIT"
