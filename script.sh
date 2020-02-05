#!/bin/bash

version=$(cat /etc/redhat-release)
echo "Your system is $version"
echo "Do you want to remove previous docker "
echo " "
sleep 1
tput setaf 1; echo "NOTE : Ignore if this is fresh installation"
echo " "
sleep 1
tput sgr0
echo " Press 'y'/'Y' to continue "
read -p 'Input:' var1
sleep 1
if [ $var1 == 'y' ] || [ $var1 == 'Y' ]
then
         sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-selinux docker-engine-selinux docker-engine -y
fi
sleep 1
echo " "
echo "Press 'y' 'Y' to continue "
sleep 1
read -p 'Input:' var2
if [ $var2 == 'y' ] || [ $var2 == 'Y' ]
then
sleep 1
echo "Process is starting ..."
fi
sleep 1
echo "Press 'y' 'Y' to install dependencies"
read -p 'Input:' dep2
if [ $dep2 == 'y' ] || [ $dep2 == 'Y' ]
then
        yum install -y yum-utils device-mapper-persistent-data lvm2 -y
fi
echo "Press 'y' 'Y' to enable yum repo for docker"
read -p 'Input:' dep3
if [ $dep3 == 'y' ] || [ $dep3 == 'Y' ]
then
        yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y
fi
echo "Press 'y' 'Y' to Install Docker"
read -p 'Input:' dep4
if [ $dep4 == 'y' ] || [ $dep4 == 'Y' ]
then
        yum install docker-ce -y
fi
sleep 2
echo " INSTALLATION DONE "
echo " "
sleep 1
echo " "
echo "Do you want to start docker"
read -p 'Input:' sta1
if [ $sta1 == 'y' ] || [ $sta1 == 'Y' ]
then
        systemctl start docker
sleep 1
run1="$(systemctl status sshd | head -n3 | tail -n1 | awk ' {print $3} ' | sed 's/(running)/running/g')"
echo "your sever is $run1 "
fi
echo "press 'y' 'Y' to ENABLE Docker service"
read -p 'Input:' ena1
if [ $ena1 == 'y' ] || [ $ena1 =='Y' ]
then
        systemctl enable docker
fi
echo "Do you want to verify docker installation"
read -p 'Input:' ver1
if [ $ver1 == 'y' ] || [ $ver1 =='Y' ]
then
        docker run hello-world
fi
