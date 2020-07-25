FROM python:3-alpine

RUN apk update \
  && apk add nginx \
  && pip install -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com --upgrade pip setuptools wheel supervisor \
  && apk add --virtual .build-deps gcc libc-dev linux-headers python3-dev musl-dev \
  && apk add --no-cache mariadb-dev libffi-dev jpeg-dev zlib-dev libjpeg \
  && pip install -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com --upgrade uwsgi mysqlclient
