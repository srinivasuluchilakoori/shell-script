#!/bin/bash

ID=$(id -u)

if  [ $ID -ne 0 ]
then
    echo "ERROR:: Please run the script with root access"
    exit 1
else
    echo "you are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR:: installing mysql is failed"
    exit 1
else
    echo "installing mysql is success"
fi
