#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "ERROR:: installing is failed"
        exit 1
    else
        echo "installing is success"
    fi
}

if  [ $ID -ne 0 ]
then
    echo "ERROR:: Please run the script with root access"
    exit 1
else
    echo "you are root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE

