#!/bin/bash
out() {

    if [$? -eq 0] ; then
        echo "Success"
    else
        echo "Failure"
    fi
}

Log = "/tmp/logs"

echo "print $(df -h)" &>>$Log
out $?
echo "print $(df -dffgh)" &>>$Log
out $?
echo "print $(df -h)" &>>$Log
out $?