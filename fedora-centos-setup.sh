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

sudo yum -y groupinstall "Development Tools"
sudo yum -y install bison
sudo yum -y install openssl-devel
sudo yum -y install pcre-devel
sudo yum -y install tar
sudo yum -y install wget
sudo yum -y install zlib-devel
sudo yum -y install hiredis-devel
sudo 
sudo rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6
sudo rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo rpm --import http://rpms.famillecollet.com/RPM-GPG-KEY-remi
sudo rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
sudo yum -y install --enablerepo=remi libmemcached-last-devel

if [ ! -d /usr/local/src/ruby-build ]; then
  cd /usr/local/src/
  sudo git clone https://github.com/sstephenson/ruby-build.git
  cd /usr/local/src/ruby-build
  sudo sh install.sh
  sudo ruby-build 2.1.4 /usr/local/ruby-2.1.4
  cd ~/
else
  echo ruby-build already exists
fi

