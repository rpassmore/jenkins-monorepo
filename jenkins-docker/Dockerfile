FROM jenkins/jenkins:2.338-jdk11

USER root
RUN apt-get update && apt-get install -y lsb-release build-essential

COPY config.xml /usr/share/jenkins/ref/jobs/monorepo/config.xml
USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean:1.25.2"