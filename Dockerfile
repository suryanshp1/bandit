FROM python:3.8-alpine as builder

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN apk update && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir bandit

ENTRYPOINT [ "bandit" ]
# ENTRYPOINT [ "/bin/sh" ]