#!/bin/bash
cd /vagrant/
yum update
yum install -y vim git tree wget curl
if [ -f "/vagrant/jre-8u60-linux-x64.rpm" ]
then
        echo "jre-8u60-linux-x64.rpm exists"
else
	wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
	  "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jre-8u60-linux-x64.rpm"
fi

if [ -f "/vagrant/elasticsearch-2.4.1.rpm" ]
then
        echo "elasticsearch-2.4.1.rpm exists"
else
	wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/rpm/elasticsearch/2.4.1/elasticsearch-2.4.1.rpm
fi

yum localinstall jre-8u60-linux-x64.rpm -y
yum install elasticsearch-2.4.1.rpm -y
chkconfig --add elasticsearch
service elasticsearch start

