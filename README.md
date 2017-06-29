## 简介：
    每次执行media.sh时,都会刷新一次total_list.txt文件，
    media.sh通过用户给定的视频文件名自动从HOME目录寻找并播放。
    如果用户给的名不全，将播放找到列表中的所有文件。
    而用户输入的视频文件名来自xxx.list。
    注意：本目录内的txt只能增加不能减少

## 用法：

### ** 安装: 非ROOT用户即可
    1) git clone https://github.com/SeaflyDennis/Media_Notebook
    2) 进入 Media_Notebook 目录
    3) 执行install.sh: `./install.sh`

### ** 打开某视频文件
    1) 从total_list.txt文件中获取某视频文件名
    2) media.sh "视频文件名"

### ** 删除某视频文件
    1) 手动找到你要删除的视频文件
    2) 在相应xxx.txt中删除该文件名条目

### ** 添加某视频文件
    1) 手动把你要添加的视频文件放到某目录（限当前目录）
    2) 把你的文件名添加到相应xxx.txt的相应位置

## Quick setup — if you’ve done this kind of thing before
HTTPS: https://github.com/SeaflyDennis/Video_Notebook.git
SSH: git@github.com:SeaflyDennis/Video_Notebook.git

### or create a new repository on the command line

``` shell
echo "# Video_Notebook" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/SeaflyDennis/Video_Notebook.git
git push -u origin master
```

### or push an existing repository from the command line

``` shell
git remote add origin https://github.com/SeaflyDennis/Video_Notebook.git
git push -u origin master
```

### or git branch or checkout

``` shell
git branch -a       #watch all branchs
git branch          #watch local branchs
git branch new_branch
git checkout new_branch -f
```


