#!/bin/bash
# File: install.sh
# Author: SeaflyDennis <seafly0616@qq.com>
# Date: 2017.06.29
# Last Modified: 2017.06.29
CUR_DIR=`pwd`

# 检查media.sh是否在.bashrc配置里
cat $HOME/.bashrc | grep "Media_Notebook"
BOOL_BASHRC=$?

# 如果不存在则将.bashrc配置media.sh命令，然后退出
if [ $BOOL_BASHRC -ne 0 ] ;
then
    cp -rv $CUR_DIR $HOME
    echo "export PATH=$PATH:$HOME/Media_Notebook/global" >> $HOME/.bashrc
    echo "install successfully!"
    echo "Please run following command manually: "
    echo "      source  ~/.bashrc"
    echo "After above, you can run 'media.sh' straightly!"
    exit 0
else
    echo "You already install it!"
    exit 0
fi
# 如果存在则将.bashrc配置media.sh命令，然后退出
# 然后用户就可以直接执行media.sh了
