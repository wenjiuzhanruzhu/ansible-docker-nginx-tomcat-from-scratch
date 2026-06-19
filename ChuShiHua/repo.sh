#!/bin/bash
#配置本地yum源

#创建挂载目录
mkdir -p /mnt/my_repo 
#挂载本地镜像
mount /dev/cdrom /mnt/my_repo &> /dev/null 
#开机自动挂载镜像
sed -i '$a\/dev/cdrom /mnt/my_repo iso9660 defaults 0 0' /etc/fstab
#创建repo文件
touch /etc/yum.repos.d/my.repo
#配置repo文件
cat > /etc/yum.repos.d/my.repo << EOP
[AppStream]
name=AppStream
baseurl=file:///mnt/my_repo/AppStream
gpgcheck=yes
gpgkey=file:///mnt/my_repo/RPM-GPG-KEY-redhat-release
enable=yes

[BaseOS]
name=BaseOS
baseurl=file:///mnt/my_repo/BaseOS
gpgcheck=yes
gpgkey=file:///mnt/my_repo/RPM-GPG-KEY-redhat-release
enable=yes
EOP
#从上到下分别为
#仓库名
#仓库描述
#仓库来源地址
#启动gpg验证
#gpg验证文件地址
#启用仓库

echo ‘仓库创建完成’

