#/bin/bash
# This shell is to swap from web1 to web2
cd /etc/nginx
sed -e s?web1:8080/activity/?8888:web2/activity2/? <nginx.conf > /tmp/xxx
cp /tmp/xxx nginx.conf
service nginx reload