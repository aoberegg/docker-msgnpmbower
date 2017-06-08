FROM mths/docker-pmdrr

RUN mkdir -p /Frontend/web
WORKDIR /Frontend/web
COPY package.json /Frontend/web/package.json
COPY bower.json /Frontend/web/bower.json

RUN apt-get install -y nodejs nodejs-legacy
RUN apt-get install -y npm
RUN apt-get install -y git
RUN npm install -g bower
RUN npm install -g gulp
RUN apt-get install -y nginx

RUN npm install
RUN bower --allow-root install

CMD ["bash"]
