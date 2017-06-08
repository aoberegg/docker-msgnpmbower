FROM mths/docker-pmdrr

RUN mkdir -p /deps
WORKDIR /deps
COPY package.json /deps/package.json
COPY bower.json /deps/bower.json

RUN apt-get install -y nodejs nodejs-legacy
RUN apt-get install -y npm
RUN apt-get install -y git
RUN npm install -g bower
RUN npm install -g gulp
RUN apt-get install -y nginx

RUN npm install -g npm@latest

RUN npm install -g
RUN bower install -g

