FROM ubuntu:16.04
MAINTAINER Lantern Team <admin@getlantern.org>

RUN apt-get update && apt-get install -y build-essential curl git apt-utils unzip file pkg-config lsof libpcap-dev libappindicator3-dev libwebkit2gtk-4.0-dev

# Environment variables
ENV GOPATH /usr/local/gocode/
ENV PATH $PATH:/usr/local/go/bin
ENV PATH $PATH:$GOPATH/bin

# The fpm packer. (https://rubygems.org/gems/fpm)
RUN apt-get install -y ruby ruby-dev
RUN gem install bundler -v '1.16.1'

# Packages for Windows.
RUN apt-get install -y mingw-w64 osslsigncode nsis

# Expect the $WORKDIR volume to be mounted.
ENV WORKDIR /lantern
VOLUME [ "$WORKDIR" ]
WORKDIR $WORKDIR
