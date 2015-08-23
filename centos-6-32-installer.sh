#!/bin/bash

yum -y update
yum -y install sudo
yum -y install wget
yum -y install nano

#Install VNC
sudo yum -y groupinstall Desktop
sudo yum -y install tigervnc-server
sudo yum -y install xorg-x11-fonts-Type1
sudo chkconfig vncserver on
vncpasswd
wget -O /etc/sysconfig/vncservers "link edited"
service vncserver restart
vncserver -kill :1
wget -O /root/.vnc/xstartup "link edited"
service vncserver start

#Install Firefox
yum -y install firefox

#Install Peazip
wget "link edited"
rpm -ivh peazip-5.2.2.LINUX.GTK2-1.i386.rpm

#Install FlashPlayer
wget "link edited"
rpm -ivh flash-plugin-11.2.202.332-release.i386.rpm
