FROM stevenk11/ibus

RUN apt-get update && apt-get install -y --no-install-recommends \
	apulse \
	ca-certificates \
	ffmpeg \
	iceweasel \
	hicolor-icon-theme \
	libasound2 \
	libgl1-mesa-dri \
	libgl1-mesa-glx \
	libpulse0 \
	fonts-liberation \
	fonts-symbola \
	&& rm -rf /var/lib/apt/lists/*

COPY local.conf /etc/fonts/local.conf

COPY entrypoint.sh /usr/bin/startfirefox

ENTRYPOINT [ "startfirefox" ]
