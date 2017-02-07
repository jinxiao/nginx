#!/bin/bash
yum install readline-devel pcre-devel openssl-devel -y
read -p "choose openrestry version" openrestry_version
cd /tmp
wget https://openresty.org/download/openresty-$openrestry_version.tar.gz
tar -xvf openrestry-$openrestry_version -C /tmp
cd /tmp/openrestry-$openrestry_version
./configure 
make && make install
wget https://gist.githubusercontent.com/vdel26/8805927/raw/249f907e465e98ac099437025218a15e55a34b4c/nginx -O /etc/init.d/nginx
chkconfig --add nginx
chkconfig nginx on
service nginx start
