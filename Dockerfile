FROM bitnami/minideb

RUN sed -i -e "s/deb.debian/ftp.hk.debian/g" /etc/apt/sources.list

RUN install_packages \
	apulse \
	ca-certificates \
	ffmpeg \
	iceweasel \
	hicolor-icon-theme \
	libasound2 \
	libgl1-mesa-dri \
	libgl1-mesa-glx \
	libpulse0 \
	fonts-noto \
	fonts-noto-cjk \
	fonts-noto-color-emoji

RUN install_packages fcitx fcitx-sunpinyin xfonts-wqy \
	fonts-inconsolata \
	fcitx-frontend-gtk3 fcitx-ui-classic

ENV LANG zh_CN.UTF-8
ENV LC_MESSAGES en_US.UTF-8

COPY local.conf /etc/fonts/local.conf

COPY entrypoint.sh /usr/bin/startfirefox

ENTRYPOINT [ "startfirefox" ]
