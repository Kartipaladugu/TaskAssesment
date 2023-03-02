FROM alpine:latest

RUN apk update && \

    apk add openjdk11

RUN mkdir /opt/tomcat

WORKDIR /opt/tomcat

ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.72/bin/apache-tomcat-9.0.72.tar.gz .

RUN tar -xvzf apache-tomcat-9.0.72.tar.gz

RUN mv apache-tomcat-9.0.72/* /opt/tomcat

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
