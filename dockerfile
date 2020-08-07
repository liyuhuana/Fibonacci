# 源镜像
FROM alpine:latest
# 作者
# MAINTAINER authName "email@domain.com"
# 设置工作目录
RUN apk add --no-cache tzdata
RUN mkdir -p /opt/game/fibonacci/
WORKDIR /opt/game/fibonacci/
# 将服务器的go工程代码加入到docker容器中
ADD / /opt/game/fibonacci/
# go 构建可执行文件
# RUN go build .

ENV GID 99
ENV TCP 0
ENV ST 0

CMD ["./fibonacci"]