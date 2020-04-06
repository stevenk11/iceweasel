FROM jess/firefox
MAINTAINER stevenk11

# Chinese input
RUN apt-get update 
RUN apt-get install -y fcitx fcitx-sunpinyin xfonts-wqy
RUN apt install -y fonts-inconsolata
ENV LANG zh_CN.UTF-8
ENV LC_MESSAGES en_US.UTF-8

COPY entrypoint.sh /usr/bin/startfirefox
