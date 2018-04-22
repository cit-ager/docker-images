#!/bin/bash

if [ -z "$TOMCAT_IP" ]; then 
    echo "Missing option -e TOMCAT_IP=???"
    exit 1
fi
sed -i -e "/TOMCAT_IP/ c worker.worker1.host=$TOMCAT_IP" /etc/httpd/conf.d/workers.properties
/usr/sbin/httpd -DFOREGROUND