FROM centos
MAINTAINER Anton Maslakou (antoxam1997@gmail.com)
EXPOSE 8080:8080

USER root
# copying java and jenkins rpm
COPY src/jdk-8u151-linux-x64.rpm /tmp/
COPY src/jenkins.war /usr/lib/jenkins/

# Installing Java
RUN yum -y localinstall /tmp/jdk-8u151-linux-x64.rpm

# Arguments for jenkins user creation
ARG user=jenkins
ARG group=jenkins
ARG uid=1000
ARG gid=1000

ENV JENKINS_HOME /var/jenkins_home

# Jenkins is run with user `jenkins`, uid = 1000
RUN groupadd -g ${gid} ${group} \
    && useradd -d "$JENKINS_HOME" -u ${uid} -g ${group} -m -s /bin/bash ${user}

# Jenkins home directory is a volume, so configuration and build history 
# can be persisted and survive image upgrades
VOLUME /var/jenkins_home

USER jenkins
ENTRYPOINT java -jar /usr/lib/jenkins/jenkins.war