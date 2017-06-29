#!/bin/bash
# File: search.sh
# Author: SeaflyDennis <seafly0616@qq.com>
# Date: 2017.06.29
# Last Modified: 2017.06.29

# 获取可用播放器
CUR_DIR=`pwd`
FIND_DIR=$HOME
TOTAL_DIR=$HOME
echo HOME=$HOME
PLAYER_LIST="smplayer mplayer"

for PLAYER in $PLAYER_LIST
do
    which $PLAYER 2>/dev/null 1>/dev/null
    if [ $? -eq 0 ] ;
    then
        break
    fi
done

which $PLAYER 2>/dev/null 1>/dev/null
if [ $? -ne 0 ] ;
then
    echo "Error: No appropriate media player"
    exit 30
fi

# 获取总列表
ls -R $TOTAL_DIR > $CUR_DIR/total_list.txt

# 从用户输入获取关键字
if [ $# -ne 1 ] ;
then
    echo "Usage: $0 keyword"
    exit 10
fi
INPUT_STRING=$1
echo "INPUT_STRING=$INPUT_STRING"

# 在xxx.txt中寻找含有关键字的行，并逐行写入临时文件
grep "$INPUT_STRING" $CUR_DIR/*.txt 1> ~/seafly_search.temp 2>/dev/null
if [ $? -ne 0 ] ;
then
    echo "Error: Can't find $INPUT_STRING"
    exit 20
fi
echo "~/seafly_search.temp" ; cat ~/seafly_search.temp

# 获取精确纯文件名列表并写入临时文件
#cat ~/seafly_search.temp | awk -F ':' '{print $2}'
#cat ~/seafly_search.temp | awk -F ':' '{print $2}' > ~/seafly_search_pure.temp
cat ~/seafly_search.temp |\
    xargs -i -d '\n' echo {} |\
    awk -F ':' '{print $2}' |\
    xargs -i -d '\n' echo {} > $HOME/seafly_search_pure.temp
echo "~/seafly_search_pure.temp:" ; cat ~/seafly_search_pure.temp

# 找出完整路径并写入临时文件（该位置暂时无法找到特殊字符文件名）
cat ~/seafly_search_pure.temp | xargs -i -d '\n' find $FIND_DIR -name {} -print > ~/seafly_search_fullpath.temp
echo "~/seafly_search_fullpath.temp:" ; cat ~/seafly_search_fullpath.temp

# 逐行读取并播放列表中的媒体文件
cat ~/seafly_search_fullpath.temp |\
    xargs -i -d '\n' $PLAYER {}

# 播放完毕，删除临时文件
rm -rf ~/seafly_file_test.temp
rm -rf ~/seafly_search.temp
rm -rf ~/seafly_search_bool.temp
rm -rf ~/seafly_search_fullpath.temp
rm -rf ~/seafly_search_grep.temp
rm -rf ~/seafly_search_media.temp
rm -rf ~/seafly_search_pure.temp
rm -rf ~/seafly_search_playerlist.temp

## 测试是否为媒体文件并播放媒体文件
#cat ~/seafly_search_fullpath.temp |\
    #xargs -i -d '\n' file {} |\
    #egrep "Media|media|video|Video|Audio|audio" > ~/seafly_search_media.temp
#echo "~/seafly_search_media.temp:" ; cat ~/seafly_search_media.temp

## 过滤出媒体文件列表并写入临时文件
#cat ~/seafly_search_media.temp |\
    #xargs -i -d '\n' echo {} | awk -F ':' '{print $1}' > ~/seafly_search_fullpath.temp
#echo "播放列表："
#cat -n ~/seafly_search_fullpath.temp
