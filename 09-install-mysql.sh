#!/bin/bash

ID=$(id -u)

if  [ $ID -ne 0 ]
then
    echo "ERROR:: Please run the script with root access"
else
    echo "you are root user"
fi
