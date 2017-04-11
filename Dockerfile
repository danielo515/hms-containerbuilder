FROM node:alpine
MAINTAINER Danielo Rodríguez Rivero <rdanielo@gmail.com>

LABEL Description="NodeJS "                                           \
      Vendor="Danielo"                                                   \
      Version="1.0"

# Install docker 
RUN set -ex;                                                                   \
    apk add --update --no-cache docker;                                        
# Copy and set entrypoint
COPY entrypoint /usr/local/bin

ENTRYPOINT [ "/usr/local/bin/entrypoint" ]

