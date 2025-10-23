#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
echo "Please run this script as root or using sudo."
fi 

dnf install mysql -y

if [ $? -ne 0 ]; then
  echo "MySQL installation failed. Please check your network connection and package manager settings."
  else 
    echo "MySQL installed successfully."
    fi 
    