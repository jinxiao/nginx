#!/bin/bash
yum install readline-devel pcre-devel openssl-devel -y
read -p "choose openrestry version" openrestry_version
cd /tmp
wget https://openresty.org/download/openresty-$openrestry_version.tar.gz
tar -xvf openrestry-$openrestry_version -C /tmp
cd /tmp/openrestry-$openrestry_version
./configure 
make && make install
