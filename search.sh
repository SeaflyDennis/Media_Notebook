#!/bin/bash
# File: search.sh
# Author: SeaflyDennis <seafly0616@qq.com>
# Date: 2017.06.29
# Last Modified: 2017.06.29
echo "Author: SeaflyDennis <seafly0616@qq.com>"
echo "WeChat: seafly0616"

CUR_DIR=`pwd`
FIND_DIR=$HOME
TOTAL_DIR=$HOME

# 获取可用播放器
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
    case "$1" in
        "mplayer")
            PLAYER=mplayer
            INPUT_STRING=$2
            ;;
        "smplayer")
            PLAYER=smplayer
            INPUT_STRING=$2
            ;;
        *)
            echo "Usage: media.sh [player] keyword"
            exit 10
            ;;
    esac
elif [ $# -eq 1 ] ;
then
    INPUT_STRING=$1
else
    echo "Usage: media.sh [player] keyword"
    exit 10
fi

echo "INPUT_STRING=$INPUT_STRING"

# 在xxx.txt中寻找含有关键字的行，并逐行写入临时文件
grep "$INPUT_STRING" $CUR_DIR/*.txt 1> ~/seafly_search.temp 2>/dev/null
if [ $? -ne 0 ] ;
then
    echo "Error: Can't find $INPUT_STRING"
    exit 20
fi
echo "~/seafly_search.temp:" ; cat ~/seafly_search.temp

# 获取精确纯文件名列表并写入临时文件
cat ~/seafly_search.temp |\
    xargs -i -d '\n' echo {} |\
    awk -F ':' '{print $2}' |\
    xargs -i -d '\n' echo {} > $HOME/seafly_search_pure.temp
echo "~/seafly_search_pure.temp:" ; cat ~/seafly_search_pure.temp

# 过滤出媒体文件并将新列表写入临时文件
cat ~/seafly_search_pure.temp |\
    awk -F '\n' '{print $1}' |\
    egrep "*.mp3|*.mp4|*.avi|*.wmv|*.flv|*.rmvb|*.wav|*.wma" > $HOME/seafly_search_media.temp

# 找出完整路径并写入临时文件（该位置暂时无法找到特殊字符文件名）
cat ~/seafly_search_media.temp | xargs -i -d '\n' find $FIND_DIR -name {} -print > ~/seafly_search_fullpath.temp
echo "播放列表~/seafly_search_fullpath.temp："
cat -n ~/seafly_search_fullpath.temp

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
