FROM ubuntu:16.04

RUN mkdir -p /Frontend/web
RUN ls
COPY package.json /Frontend/web/package.json
COPY bower.json /Frontend/web/bower.json

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs nodejs-legacy
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y npm
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx
RUN npm install -g bower
RUN npm install -g gulp

RUN cd /Frontend/web && ls && bower install && npm install && cd ~

