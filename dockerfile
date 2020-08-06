# 源镜像
FROM golang:latest
# 作者
# MAINTAINER authName "email@domain.com"
# 设置工作目录
WORKDIR /opt/game/Fibonacci
# 将服务器的go工程代码加入到docker容器中
ADD /build /opt/game/Fibonacci
# go 构建可执行文件
RUN go build .

ENV GID 99
ENV TCP 0
ENV ST 0

CMD ["./kaeng"]