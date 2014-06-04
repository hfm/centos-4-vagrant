#!/bin/sh
set -e

osarch=`uname -i`

# epel
curl -OL "http://ftp.jaist.ac.jp/pub/Linux/Fedora/epel/RPM-GPG-KEY-EPEL-4"
rpm --import RPM-GPG-KEY-EPEL-4
rm RPM-GPG-KEY-EPEL-4
rpm -ivh "http://ftp.jaist.ac.jp/pub/Linux/Fedora/epel/4/$osarch/epel-release-4-10.noarch.rpm"

yum install -y puppet
