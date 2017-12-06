#/bin/bash
# This shell is inside the nginx docker, and used to start off operations. 
# IT's fired off by the dorun.sh to start things
#/etc/nginx directory contains configuration details of specific processes or optional components
cd /etc/nginx
#The syntax of the s command is ‘s/regexp/replacement/flags’.
sed -e s?www.cs.ucdavis.edu?web1:8080/activity/? <nginx.conf > /tmp/xxx
cp /tmp/xxx nginx.conf
service nginx reload 

