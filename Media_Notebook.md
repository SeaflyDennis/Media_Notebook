# Media_Notebook简介.mp4
    0.属性：其实就是一个调用工具的shell脚本（查询式的学习）
    0.特点：根据提供的非完整文件名也能找到相应文件
    1.目的：方便快速找到并打开相应媒体文件或其他文件
    2.默认：默认使用mplayer或smplayer打开文件（打开前会检查是否为媒体文件）
    3.准备：一些必备工具的安装准备.mp4
        1.安装版本控制工具客户端git（ubuntu）.mp4
        2.安装媒体播放器mplayer和smplayer（ubuntu）.mp4
        3.安装PDF阅读器（ubuntu）.mp4
            1.PDF阅读器okular的安装与使用（ubuntu）.mp4
            2.PDF阅读器福昕阅读器的安装与使用（ubuntu）.mp4
            （以上两款PDF阅读器安装成功任意一款都可以，你开心的话两款都安装吧）
    4.注意：Media_Notebook注意事项.mp4
        1.里面的目录或文件只能多不能少（尤其.txt文件和对应目录）
        2.新添加的文件名不得包含非法字符或尽量不包含空格字符

# Media_Notebook安装前的准备工作.mp4
    1.Ubuntu的网络准备-连接无线网.mp4
    2.Ubuntu的软件源镜像源配置.mp4
    3.安装版本控制工具客户端git（ubuntu）.mp4
    4.安装媒体播放器mplayer和smplayer（ubuntu）.mp4

# Media_Notebook获取.mp4
    0.准备：sudo apt-get install git
    1.获取：git clone https://github.com/SeaflyDennis/Media_Notebook

# Media_Notebook安装.mp4
    1.获取：git clone https://github.com/SeaflyDennis/Media_Notebook
    2.安装：cd Media_Notebook ; chmod 755 install.sh ; ./install.sh

# Media_Notebook使用测试.mp4
    1.覆盖：安装好之后，去暑假组百度云网盘里下载Media_Notebook并覆盖HOME目录Media_Notebook目录下的文件内容
    2.帮助：键盘键入media.sh直接回车
    3.下载：从网盘学习笔记目录中下载Media_Notebook测试文件到你的HOME目录内任何位置
    4.测试01：media.sh xxx.mp4                                  （测试视频文件）
    4.测试01：media.sh [后缀名] xxx.mp4                         （测试视频文件）
    4.测试02：media.sh xxx.mp3                                  （测试音频文件）
    4.测试02：media.sh [后缀名] xxx.mp3                         （测试音频文件）    （其中的方括号可不填，因为media.sh默认只支持音频视频）
    4.测试03：media.sh <后缀名或指定工具名> xxx.pdf             （测试PDF文档）     （其中尖括号为必须填，因为media.sh默认只支持音频视频）
    （后面的更多测试和使用，都需要你有相应工具的支持，比如图片、word文档等等，这些后面用到才会讲）

# Media_Notebook添加文件.mp4


# Media_Notebook删除文件.mp4


# 最后祝大家使用愉快
