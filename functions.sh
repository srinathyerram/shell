#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then 
echo "ERROR: : Pleade run this script as root or using sudo."
    exit 1
fi

VALIDATION(){
    if [ $1 -ne 0 ]; then
    echo "ERROR:: Installation of $2 failed"
    else
    echo "$2 installed successfully."
    fi
}

dnf install mysql -y
VALIDATION $? "MySQL"

dnf install nginx -y
VALIDATION $? "Nginx"

dnf install python3 -y
VALIDATION $? "Python3"
