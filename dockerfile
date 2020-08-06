# 源镜像
FROM alpine:latest
# 作者
# MAINTAINER authName "email@domain.com"
# 设置工作目录
WORKDIR /usr/local/games/projects/Fibonacci
# 将服务器的go工程代码加入到docker容器中
ADD /usr/local/games/build /usr/local/games/projects/Fibonacci
# go 构建可执行文件
# RUN go build .

ENV GID 99
ENV TCP 0
ENV ST 0

CMD ["./fibonacci"]