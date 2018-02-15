FROM anapsix/alpine-java:8u131b11_jdk

MAINTAINER Uvindra Dias Jayasinha <uvindra_dj@yahoo.com>

# Install mvn 3.0.4 
RUN wget http://archive.apache.org/dist/maven/maven-3/3.0.4/binaries/apache-maven-3.0.4-bin.tar.gz
RUN tar -zxf apache-maven-3.0.4-bin.tar.gz
RUN mv apache-maven-3.0.4 /usr/local
RUN ln -s /usr/local/apache-maven-3.0.4/bin/mvn /usr/bin/mvn
RUN rm apache-maven-3.0.4-bin.tar.gz 

# Install git
RUN apk update && apk add git


