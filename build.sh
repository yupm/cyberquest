#!/bin/bash

#This script file installs the necessary resources to set up Cyberquest

apt update
apt-add-repository --yes --update ppa:ansible/ansible 
apt install -y virtualbox ruby-full software-properties-common ansible git
wget https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb
dpkg -i vagrant_2.2.6_x86_64.deb 
