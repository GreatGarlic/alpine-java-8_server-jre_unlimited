
FROM anapsix/alpine-java:8_server-jre_unlimited

RUN echo "http://mirrors.ustc.edu.cn/alpine/v3.4/main" > /etc/apk/repositories \
 && echo "http://mirrors.ustc.edu.cn/alpine/v3.4/community" >> /etc/apk/repositories \
 && apk update \
 && apk add tzdata \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" >  /etc/timezone \
 && apk del tzdata \
 && rm -rf /var/cache/apk/*

