#!/bin/bash

#配置静态ip
nmcli connection modify ens160 \
	ipv4.method manual \
	ipv4.addresses 192.168.100.20/24 \
	ipv4.gateway 192.168.100.2 \
	ipv4.dns 8.8.8.8
#重新激活网卡，使配置生效
nmcli connection up ens160 

echo "静态ip配置完成"

