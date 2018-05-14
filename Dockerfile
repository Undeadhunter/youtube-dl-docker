FROM alpine

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

RUN apk update \
	&& apk add py2-pip ca-certificates \
	&& apk add ffmpeg \
	&& rm -rf /var/cache/apk/*

ENV RUN-OPTS = ""
ENV FORMAT = "" 
ENV URL = ""

RUN pip install youtube-dl

VOLUME /output

CMD /entrypoint.sh
