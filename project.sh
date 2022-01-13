#!/bin/bash
out() {

    if [ $1 -eq 0 ] ; then
        echo "Success"
    else
        echo "Failure" 
    fi
}

Log=/tmp/out1.log

sudo yum install httpd -y >&Log
out $?
echo -e "ProxyPass "/student" "http://APP-SERVER-IPADDRESS:8080/student"
ProxyPassReverse "/student"  "http://APP-SERVER-IPADDRESS:8080/student"" > /etc/httpd/conf.d/app-proxy.conf >&Log
out $?