# NVM, Node, PM2, yarn
FROM ubuntu:14.04
MAINTAINER Erickson Juang <a820224@gmail.com>
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION=v6.9.2
RUN apt-get update && apt-get install -y curl
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash \
  && source $NVM_DIR/nvm.sh \
  && nvm install $NODE_VERSION \
  && nvm alias default $NODE_VERSION \
  && npm install yarn -g \
  && npm install pm2 -g

# Execute instruction
# sudo docker run -idt --name <name> -p <hostPort>:<guestPort> -v <hostDir>:<guestDir> <ImageName>
