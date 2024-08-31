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
        echo -e "ERROR:: $2 .... $R failed $N"
        exit 1
    else
        echo -e "$2 .... $G  success $N"
    fi
}

if  [ $ID -ne 0 ]
then
    echo -e "ERROR:: $R Please run the script with root access $N"
    exit 1
else
    echo -e "$G you are root user $N"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing MYSQl"

yum install git -y &>> $LOGFILE

VALIDATE $? "installing GIT"


