#!/bin/bash
out() {

    if [ $1 -eq 0 ] ; then
        echo "Success"
    elif []
        echo "Failure" 
    fi
}

Log=/tmp/out1.log

echo "print $(df -h)" #&>$Log
out $?
df -sfsf #&>Log
out $?
echo "print $(df -h)" #&>$Log
out $?