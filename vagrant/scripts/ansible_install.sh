#!/bin/bash

yum install -y epel-release
yum install -y ansible python-pip

pip install --upgrade pip "pywinrm>=0.2.2"

sed -i 's@#roles_path    = /etc/ansible/roles@roles_path    = /etc/ansible/roles:/vagrant/roles/internal:/vagrant/roles/external@g' /etc/ansible/ansible.cfg
sed -i 's/#host_key_checking = False/host_key_checking = False/g' /etc/ansible/ansible.cfg
sed -i 's@#library        = /usr/share/my_modules/@library        = /vagrant/library/@g' /etc/ansible/ansible.cfg
