#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F---%H-%M-%S)

R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$R ERROR:: $2 .... failed $N"
        exit 1
    else
        echo "$G $2 .... success $N"
    fi
}

if  [ $ID -ne 0 ]
then
    echo "ERROR:: $R Please run the script with root access $N"
    exit 1
else
    echo "$G you are root user $N"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing MYSQl"

yum install git -y &>> $LOGFILE

VALIDATE $? "installing GIT"


