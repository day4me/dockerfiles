FROM alpine:latest

RUN apk update && apk upgrade && \
apk add openjdk8 && \
apk add supervisor && \
apk add collectd && \
mkdir /opt/tomcat

COPY apache-tomcat-9.0.53.tar.gz /tmp/apache-tomcat-9.0.53.tar.gz

RUN tar xvzf /tmp/apache-tomcat-9.0.53.tar.gz --strip-components 1 --directory /opt/tomcat

COPY supervisord.conf /etc/supervisord.conf

EXPOSE 8080
EXPOSE 9022

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]