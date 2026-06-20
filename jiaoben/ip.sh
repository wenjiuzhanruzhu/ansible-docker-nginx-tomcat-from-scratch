#!/bin/bash
i=1
while [ $i -lt 256 ];
do
	if ping -c 1 -w 1 192.168.100.$i &> /dev/null;then
		echo "192.168.100.$i" >> node.ip
	fi
	let i++
done
wait
echo "扫描完成"
