#!/bin/bash
#创建用户haha
useradd haha
echo haha:794613|chpasswd                               #创建用户密码
sed -i '$a\haha ALL=(ALL)  NOPASSWD: ALL ' /etc/sudoers #免密sudo权限
echo 'haha用户创建完成'
