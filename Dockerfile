FROM ubuntu:14.04
MAINTAINER WiredThing <admin@wiredthing.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

#################################

RUN apt-get install -y apache2

# Enable SSL on the droplet this will need a restart if apache
RUN a2enmod ssl
RUN service apache2 restart

ADD ./resources/CSRgen.sh /etc/apache2/CSRgen.sh


CMD /etc/apache2/CSRgen.sh
