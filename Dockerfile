FROM alpine

WORKDIR /root

RUN apk update
RUN apk add git perl perl-html-parser perl-http-cookies perl-libwww perl-xml-libxml

RUN git clone https://github.com/get-iplayer/get_iplayer.git

