#!/bin/bash
cd /vagrant/
yum update
yum install -y vim git tree wget curl

wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
	"http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jre-8u60-linux-x64.rpm"
yum localinstall jre-8u60-linux-x64.rpm -y
wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/rpm/elasticsearch/2.4.1/elasticsearch-2.4.1.rpm
yum install elasticsearch-2.4.1.rpm -y
chkconfig --add elasticsearch
service elasticsearch start

