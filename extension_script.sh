#!/bin/bash

echo "checking log file"
FILE=/home/yuvraj/customscript.log

if [ -f $FILE ];
  then
   echo "$FILE exists.. removing the file"
   rm $FILE
 else echo "log file does not exist"
fi

echo "checking & storing the status of nginx"
status=$(sudo systemctl status nginx | grep Active: | awk '{print $2}')

echo "nginx is:" $status

if [ $status == "inactive" ]
  then
    echo "nginx is inactive.. starting nginx.."
    sudo systemctl start nginx
    echo "nginx started!! Please check your connectivity"

elif [ $status == "active" ]
  then
    echo "nginx is already running.. Please check connectivity from browser now"
fi

echo "ending custom script"