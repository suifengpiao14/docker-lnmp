#
# Dockerfile for building PHP7 images
# 
# https://github.com/addcn/docker-lnmp.git
#

FROM centos:centos7
MAINTAINER dodo <lhuibo@gmail.com>

ENV TZ "Asia/Shanghai"

#Dir
RUN mkdir -p /var/conf/default/php7/etc \
             /var/conf/default/nginx/conf/conf.d \
             /var/www/html \
             /usr/local/php7/etc \
             /var/log/php7 \
             /var/run \
             /usr/local/nginx/conf/conf.d \
             /usr/local/nginx/logs 

COPY ./php7/etc /var/conf/default/php7/etc
COPY ./nginx/conf  /var/conf/default/nginx/conf


#VOLUME /var/www/html

#VOLUME /usr/local/php7/etc
#VOLUME /var/log/php7

#VOLUME /usr/local/nginx/conf/nginx.conf
#VOLUME /usr/local/nginx/conf/conf.d
#VOLUME /usr/local/nginx/logs

#启动volume contariner 后复制默认配置脚本
#CMD ["cp -r -n /var/conf/default/php7/etc/* /usr/local/php7/etc/ && cp -r -n /var/conf/default/nginx/conf/* /usr/local/nginx/conf/"]
