#!/bin/bash
out() {

    if [ $1 -eq 0 ] ; then
        echo "Success"
    else
        echo "Failure" 
    fi
}

Log=/tmp/out1.log

yum install httpd -y >&Log
out $?
echo "ProxyPass "/student" "http://APP-SERVER-IPADDRESS:8080/student"
ProxyPassReverse "/student"  "http://APP-SERVER-IPADDRESS:8080/student" " > /etc/httpd/conf.d/proxy.conf 
out $?