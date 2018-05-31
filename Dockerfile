FROM kdvolder/mvn-plus-npm

MAINTAINER Serfim TIC

RUN apt-get update
RUN apt-get install -y ruby ruby-dev
RUN gem install compass
RUN npm install -g bower
RUN npm install -g grunt-cli

RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8