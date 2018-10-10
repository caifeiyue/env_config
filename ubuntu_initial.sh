#!/bin/bash
# Automation Environment Configuration
# laocai, Aug 28 2018

# change apt sourcelist(run in sudo)
source_list1='deb http://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse'
source_list2='deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse'
source_list3='deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse'
source_list4='deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse'
source_list5='deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse'
source_list6='deb http://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse'
source_list7='deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse'
source_list8='deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse'
source_list9='deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse'
source_list10='deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse'

target_file='/etc/apt/sources.list'
bak_file='/etc/apt/sources.list.bak'
# TODO: judge whether file exists
cp $target_file $bak_file

echo $source_list1 > sources.list
echo $source_list2 >> sources.list
echo $source_list3 >> sources.list
echo $source_list4 >> sources.list
echo $source_list5 >> sources.list
echo $source_list6 >> sources.list
echo $source_list7 >> sources.list
echo $source_list8 >> sources.list
echo $source_list9 >> sources.list
echo $source_list10 >> sources.list

apt update
apt upgrade -y


# software install
# TODO: judge whether installed success
# TODO: whether installed already
# f.lux
# jianguoyun

# chrome
apt install google-chrome-stable
apt install fcitx-googlepinyin

apt install terminator
apt install okular
apt install shutter
apt install meld
apt install feh

# python related
apt install python3
apt install python3-pip
apt install ipython
