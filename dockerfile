FROM ubuntu
MAINTAINER Aanand
RUN apt update
RUN apt-get -y install openjdk-8-jdk
RUN apt-get -y install wget
RUN apt-get -y install sudo
RUN apt-get update && apt-get install -y gnupg2
RUN wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-ke$
RUN sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt$
RUN apt-get update
RUN apt-get -y install jenkins
RUN echo "/sbin/service jenkins start" >> .bashrc
CMD start jenkins
CMD service start jenkins
RUN /etc/init.d/jenkins start
RUN echo "Jenkins Started Bitch1"
