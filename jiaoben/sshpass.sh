#！/bin/bash
#sshpass 可以让ansible使用账号密码登陆被控节点
if sudo yum install -y sshpass.x86_64 &>/dev/null;then
	echo "sshpass下载完成"
fi
