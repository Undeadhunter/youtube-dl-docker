FROM alpine

ENV RUNOPTS = ""
ENV FORMAT = ""
ENV URL = ""

RUN apk update \
	&& apk add py2-pip ca-certificates \
	&& apk add ffmpeg \
	&& rm -rf /var/cache/apk/*

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

RUN pip install youtube-dl

VOLUME /output

RUN ls /

WORKDIR /

ENTRYPOINT /entrypoint.sh
