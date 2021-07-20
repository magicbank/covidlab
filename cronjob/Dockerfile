FROM ubuntu:focal

MAINTAINER Thapanut Khanteetao <magicbank@gmail.com>

ENV DEBIAN_FRONTEND="noninteractive" DEBCONF_NONINTERACTIVE_SEEN="true" TZ="Asia/Bangkok" TOKEN="" USERNAME="" USEREMAIL=""

RUN ln -fs /usr/share/zoneinfo/Asia/Bangkok /etc/localtime
RUN apt-get update && apt-get upgrade -y && apt-get install -y ssh cron curl git && apt-get autoremove -y && apt-get autoclean -y && rm -rf /var/lib/apt/lists/* && rm -rf /etc/cron.*/*
RUN mkdir -p /root/.ssh

VOLUME /root/.ssh

WORKDIR /covid
ADD crontab /etc/crontab
ADD job entrypoint.sh .
RUN chmod 0644 /etc/crontab && chmod 0744 /covid/job

WORKDIR /covid/lab

ENTRYPOINT ["/covid/entrypoint.sh"]
CMD ["cron", "-f", "-l", "2"]
