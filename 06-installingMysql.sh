#!/bin/bash
ID=$(id -u)

if [ $ID -ne 0]
then
echo "You are not a root user "
else
echo "You are root user"
fi