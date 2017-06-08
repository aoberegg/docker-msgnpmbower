FROM mths/docker-pmdrr

RUN mkdir -p /Frontend/web
RUN ls
COPY package.json /Frontend/web/package.json
COPY bower.json /Frontend/web/bower.json

RUN apt-get install -y nodejs nodejs-legacy
RUN apt-get install -y npm
RUN apt-get install -y git
RUN apt-get install -y nginx
RUN npm install -g bower
RUN npm install -g gulp

RUN cd /Frontend/web && ls && bower install --allow-root && npm install && cd ~

RUN cd /Frontend/web && ls
