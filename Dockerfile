FROM ubuntu:latest
MAINTAINER Ruhl Anton <a.ruhl@gmailautomacon.com>

# Setting Enviroment variables
ENV NODE_VERSION 21.6.1
ENV NODE_ARCH arm64
ENV TMP /tmp
ENV NODE_FILEPATH node-v$NODE_VERSION-linux-$NODE_ARCH

# Udpating and Installing dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    xz-utils \
    openssl \
    && rm -rf /var/lib/apt/lists/*

# Install Nodejs
RUN curl -SL https://nodejs.org/dist/v$NODE_VERSION/$NODE_FILEPATH.tar.xz -o $TMP/$NODE_FILEPATH.tar.xz \
    && cd $TMP/ && tar -xJf $NODE_FILEPATH.tar.xz && rm $NODE_FILEPATH.tar.xz \
    && mv $NODE_FILEPATH /opt/node \
    && ln -sf /opt/node/bin/node /usr/bin/node \
    && ln -sf /opt/node/bin/npm /usr/bin/npm

# Install the latest version of Yarn
RUN curl -SL https://yarnpkg.com/latest.tar.gz -o $TMP/latest.tar.gz \
    && cd $TMP/ && tar -zxf latest.tar.gz && rm latest.tar.gz \
    && mv $TMP/yarn* /opt/yarn \
    && ln -sf /opt/yarn/bin/yarn /usr/bin/yarn
