FROM mths/docker-pmdrr

RUN apt-get install -y nodejs nodejs-legacy
RUN apt-get install -y npm
RUN apt-get install -y git
RUN npm install -g bower
RUN npm install -g gulp
RUN apt-get install -y nginx
