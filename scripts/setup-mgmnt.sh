#!/usr/bin/env bash
# install ansible (http://docs.ansible.com/intro_installation.html)
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

apt-get -y install python-pip
pip install --upgrade setuptools
pip install "pywinrm>=0.3.0"

# copy examples into /home/vagrant (from inside the mgmt node)
cp -a /vagrant/* /home/vagrant
chown -R vagrant:vagrant /home/vagrant

# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL
10.0.15.10  mgmnt
10.0.16.10 linux-node-1
10.0.16.11 linux-node-2
10.0.17.10 win-node-1
10.0.17.11 win-node-2
EOL
