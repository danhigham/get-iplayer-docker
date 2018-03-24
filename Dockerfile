FROM alpine

WORKDIR /root

RUN apk update
RUN apk add git perl perl-html-parser perl-http-cookies perl-libwww perl-xml-libxml perl-lwp-protocol-https

RUN git clone https://github.com/get-iplayer/get_iplayer.git \
    && cd get_iplayer \
    && git fetch --tags \
    && latestTag=$(git describe --tags `git rev-list --tags --max-count=1`) \
    && git checkout $latestTag -b $latestTag

