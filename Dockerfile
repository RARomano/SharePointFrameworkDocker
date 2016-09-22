FROM node:latest
 
RUN apt-get -yq update && \
    apt-get -yq install git net-tools sudo bzip2 build-essential
 
RUN npm install -g --silent yo gulp bower
 
RUN adduser --disabled-password --gecos "" yeoman && \
  echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
 
RUN mkdir /usr/src/sharepoint && chown yeoman:yeoman /usr/src/sharepoint
WORKDIR /usr/src/sharepoint
 
RUN npm i -g @microsoft/generator-sharepoint --silent
 
USER yeoman
 
RUN yo @microsoft/sharepoint helloworld webpart helloworld none --component-description "test"
WORKDIR /usr/src/sharepoint/helloworld
