FROM node:alpine
MAINTAINER Danielo Rodríguez Rivero <rdanielo@gmail.com>

LABEL Description="NodeJS image bundler"                              \
      Vendor="Danielo"                                                 \
      Version="1.0"

# Install docker 
RUN set -ex;                                                           \
    apk update && apk upgrade &&                                        \
    apk add --no-cache bash git openssh docker;  
# Copy and set entrypoint
COPY entrypoint /usr/local/bin

ENTRYPOINT [ "/usr/local/bin/entrypoint" ]

