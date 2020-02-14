FROM python:3.7.6-slim-stretch
  
RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y install --no-install-recommends build-essential libssl-dev \
    && addgroup pythonuser --gid 50000 \
    && adduser pythonuser --uid 50000 --gid 50000 \
    && mkdir -p /var/app/tmp/pids/ \
    && mkdir -p /usr/src/app/pro \
    && chown -R pythonuser.pythonuser /usr/src/app \
    && apt-get -y autoremove && apt-get -y autoclean \
    && rm -rf /var/lib/apt/lists/*
