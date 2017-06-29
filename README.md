## 简介：
    search.sh通过用户给定的视频文件名自动从本目录寻找并播放。
    而用户输入的视频文件名来自xxx.list。

## 用法：

### ** 打开xxx.list中某视频文件
    1) 从xxx.list获取某视频文件名 
    2) ./search.sh "视频文件名"

### ** 删除某视频文件
    1) 手动找到你要删除的视频文件
    2) 在相应xxx.list中删除该文件名条目

### ** 添加某视频文件
    1) 手动把你要添加的视频文件放到某目录（限当前目录）
    2) 把你的文件名添加到相应xxx.list的相应位置

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


