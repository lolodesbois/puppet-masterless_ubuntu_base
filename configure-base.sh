#!/bin/bash

UBUNTU_CODENAME=$(lsb_release -cs)

## install puppet client
echo "Puppet client installation on $UBUNTU_CODENAME"

cd /tmp 
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-${UBUNTU_CODENAME}.deb
sudo dpkg -i puppetlabs-release-pc1-${UBUNTU_CODENAME}.deb
sudo rm -rf puppetlabs-release-pc1-${UBUNTU_CODENAME}.deb
sudo apt-get update
sudo apt-get -f install
sudo apt-get -qy install puppet-agent

sudo ln -s /opt/puppetlabs/bin/puppet /usr/local/bin/puppet

## retrieve public git ide bootstrap
echo "Git client installation on $UBUNTU_CODENAME"
sudo apt-get -qy install git

# clean history
#cat /dev/null > ~/.bash_history && history -c && exit

