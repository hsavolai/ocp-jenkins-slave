FROM registry.access.redhat.com/openshift3/jenkins-slave-maven-rhel7

MAINTAINER Harri Savolainen <harri.savolainen@gmail.com>

# Labels consumed by Red Hat build service
LABEL com.redhat.component="jenkins-slave-phantomjs-rhel7-docker" \
      name="openshift3/jenkins-slave-phantomjs-rhel7" \
      version="3.4" \
      architecture="x86_64" \
      release="4" \
      io.k8s.display-name="Jenkins Slave Phantomjs" \
      io.k8s.description="The jenkins phantomjs maven image has the maven tools on top of the jenkins slave base image." \
      io.openshift.tags="openshift,jenkins,slave,maven,phantomjs"

# Install Maven
RUN yum install -y bzip2 && \
    yum clean all -y && \
    mkdir -p $HOME/.m2

USER 1001
