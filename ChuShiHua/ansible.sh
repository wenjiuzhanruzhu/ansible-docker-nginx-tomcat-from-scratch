#!/bin/bash
#下载ansible
yum install -y ansible-core.noarch
sleep 15
#下载ansible-navigator
pip install -y ansible-navigator
sleep 15
#创建ansible.cfg文件
ansible-config init --disable > /xiangmu/ansible.cfg
