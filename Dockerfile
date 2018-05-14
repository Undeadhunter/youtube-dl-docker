FROM alpine

RUN apk update \
	&& apk add py2-pip ca-certificates \
	&& apk add ffmpeg \
	&& rm -rf /var/cache/apk/*
  

RUN pip install youtube-dl

WORKDIR /output

ENTRYPOINT ["youtube-dl"]
