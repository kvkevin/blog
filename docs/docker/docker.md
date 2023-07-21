# Docker

1. 拉取镜像
```
    docker pull ubuntu
```
2. 后台运行镜像
         docker run -itd --name ubuntu-test ubuntu /bin/bash

3. 导出容器
        docker export 1e560fca3906 > ubuntu.tar
4. 到入容器
        cat docker/ubuntu.tar | docker import - test/ubuntu:v1
5. 端口设置
        docker run -d -p 5000:5000 training/webapp python app.py





# Dockerfile
```
FROM nginx
RUN yum -y install wget \
    && wget -O redis.tar.gz "http://download.redis.io/releases/redis-5.0.3.tar.gz" \
    && tar -xvf redis.tar.gz
FROM- 镜像从那里来
MAINTAINER- 镜像维护者信息
RUN- 构建镜像执行的命令，每一次RUN都会构建一层
CMD- 容器启动的命令，如果有多个则以最后一个为准，也可以为ENTRYPOINT提供参数
VOLUME- 定义数据卷，如果没有定义则使用默认
USER- 指定后续执行的用户组和用户
WORKDIR- 切换当前执行的工作目录
HEALTHCHECH- 健康检测指令
ARG- 变量属性值，但不在容器内部起作用
EXPOSE- 暴露端口
ENV- 变量属性值，容器内部也会起作用
ADD- 添加文件，如果是压缩文件也解压
COPY- 添加文件，以复制的形式
ENTRYPOINT- 容器进入时执行的命令
```

docker build -t nginx:test .  

# Docker Compose
Compose 使用的三个步骤：

使用 Dockerfile 定义应用程序的环境。

使用 docker-compose.yml 定义构成应用程序的服务，这样它们可以在隔离环境中一起运行。

最后，执行 docker-compose up 命令来启动并运行整个应用程序。

```
# yaml 配置实例
version: '3'
services:
  web:
    build: .
    ports:
   - "5000:5000"
    volumes:
   - .:/code
    - logvolume01:/var/log
    links:
   - redis
  redis:
    image: redis
volumes:
  logvolume01: {}
```