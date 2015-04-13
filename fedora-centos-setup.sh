#!/bin/sh

cp -pvfr .bashrc ~/.
cp -pvfr .gitconfig ~/.
cp -pvfr .screenrc ~/.
cp -pvfr .ssh ~/.
cp -pvfr .vim ~/.
cp -pvfr .vimrc ~/.

# TODO: ADD yum install
#sudo apt-get -y update
#sudo apt-get -y install rake bison git gperf libmemcached-dev libcurl4-openssl-dev libhiredis-dev libmarkdown2-dev libcgroup-dev libcap-dev libjansson-dev redis-server iproute whois apache2 apache2-dev rake bison libcurl4-openssl-dev libhiredis-dev libmarkdown2-dev liblua5.1-0-dev vim screen memcached
#sudo apt-get install -y autoconf
#sudo apt-get install -y libprotobuf-c0-dev
#sudo apt-get install -y libprotoc-dev
#sudo apt-get install -y protobuf-c-compiler
#sudo apt-get install -y asciidoc
#sudo apt-get install -y libxml2-dev libevent-dev libjemalloc-dev libjansson-dev
#sudo apt-get install -y libcunit1-dev

yum -y groupinstall "Development Tools"
yum -y install bison
yum -y install openssl-devel
yum -y install pcre-devel
yum -y install tar
yum -y install wget
yum -y install zlib-devel
yum -y install hiredis-devel

rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6
rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm --import http://rpms.famillecollet.com/RPM-GPG-KEY-remi
rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
yum -y install --enablerepo=remi libmemcached-last-devel

cd /usr/local/src/
git clone https://github.com/sstephenson/ruby-build.git

cd /usr/local/src/ruby-build
sh install.sh
ruby-build 2.1.4 /usr/local/ruby-2.1.4
export PATH=/usr/local/ruby-2.1.4/bin:$PATH
cd ~/
