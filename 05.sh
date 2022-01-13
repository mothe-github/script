#!/bin/bash
out() {

    if [ $1 -eq 0 ] ; then
        echo "Success"
    else
        echo "Failure"
    fi
}

Log=/tmp/out1.log

echo "print $(df -h)" &>>$Log
out $?
echo "print $(df -dffgh)" &>>$Log
out $?
echo "print $(df -h)" &>>$Log
out $?