## Python环境设置

### mac_修改默认python为python3，pip为pip3
>1. 找到 python3所在路径
mac:~ beyond$ which python3

/usr/bin/python3

 

mac:~ beyond$ which pip3

/usr/bin/pip3

2. 打开配置文件
   open ~/.bash_profile

   如果没有，就用 vim 新建
   vim ~/.bash_profile

3. 设置python3的环境变量
PYTHON=/Users/beyond/Library/Python/3.7/bin
export PATH=$PATH:$PYTHON

alias python="/usr/bin/python3"

alias pip="/Users/beyond/Library/Python/3.7/bin/pip3.7"

（重命名python， 这步很重要，直接关系到默认启动的python版本是否修改）

4. 确认修改
关闭文件后，在终端执行: source ~/.bash_profile

在终端调用 python，查看是否修改成功
