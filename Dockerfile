FROM alpine

RUN apk update \
	&& apk add py2-pip ca-certificates \
	&& apk add ffmpeg \
	&& rm -rf /var/cache/apk/*

ENV RUN-OPTS = ""
ENV URL = ""

RUN pip install youtube-dl

WORKDIR /output

CMD youtube-dl -o $RUN-OPTS $URL
