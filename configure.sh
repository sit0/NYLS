#!/bin/sh

cd /tmp
rm -rf conf 2> /dev/null
tar jxvf conf.tbz
./conf/install.sh

echo NYLS > /etc/hostname

locale-gen --lang pl_PL.UTF-8

#chsh -s /bin/zsh vagrant

#reboot
