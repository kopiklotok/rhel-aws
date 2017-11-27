#!/bin/bash
yum install wget nano squid -y
rm -rf /etc/squid/squid.conf
wget https://raw.githubusercontent.com/kopiklotok/rhel-aws/master/squid.conf -O /etc/squid/squid.conf
service squid start
service iptables stop
service firewalld stop  
