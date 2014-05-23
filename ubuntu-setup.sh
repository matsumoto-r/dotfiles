#!/bin/bash

# setup config
cp -pvfr .bashrc ~/.
cp -pvfr .profile ~/.
cp -pvfr .gitconfig ~/.
cp -pvfr .screenrc ~/.
cp -pvfr .ssh ~/.
cp -pvfr .vim ~/.
cp -pvfr .vimrc ~/.

# download repo
if [ ! -d "~/DEV" ]; then
  mkdir ~/DEV
fi

# install packages
sudo apt-get -y update
sudo apt-get install -y rake bison git gperf libmemcached-dev
sudo apt-get install -y libcurl4-openssl-dev libhiredis-dev libmarkdown2-dev
sudo apt-get install -y libcgroup-dev libcap-dev libjansson-dev redis-server
sudo apt-get install -y iproute whois apache2 apache2-dev rake bison
sudo apt-get install -y libcurl4-openssl-dev libhiredis-dev libmarkdown2-dev
sudo apt-get install -y liblua5.1-0-dev vim screen memcached
sudo apt-get install -y autoconf valgrind
sudo apt-get install -y libprotobuf-c0-dev
sudo apt-get install -y libprotoc-dev
sudo apt-get install -y protobuf-c-compiler
sudo apt-get install -y asciidoc
sudo apt-get install -y libxml2-dev libevent-dev libjemalloc-dev libjansson-dev
sudo apt-get install -y libcunit1-dev
sudo apt-get install -y openjdk-7-jdk autotools-dev libltdl-dev libtool autoconf
sudo apt-get install -y autopoint libboost-all-dev genromfs zfs-fuse autoconf
sudo apt-get install -y ant libffi-dev bison gyp git build-essential qemu-utils
sudo apt-get install -y qemu-system-x86 bridge-utils libvirt0 libvirt-bin
sudo apt-get install -y apache2-utils
sudo apt-get install -y build-essential libboost-all-dev genromfs autoconf
sudo apt-get install -y maven
sudo apt-get install -y libmaven-shade-plugin-java
sudo apt-get install -y python-dpkt tcpdump gdb tcl-dev
sudo apt-get install -y ruby2.0 ruby2.0-dev

# install go
if [ ! -d "/usr/local/go" ]; then
  wget https://storage.googleapis.com/golang/go1.2.2.linux-amd64.tar.gz
  sudo tar -C /usr/local -xzf go1.2.2.linux-amd64.tar.gz
fi

# setup kvm
sudo /sbin/modprobe kvm
sudo gpasswd -a matsumotory kvm
