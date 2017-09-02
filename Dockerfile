FROM docker.elastic.co/logstash/logstash:5.5.2

MAINTAINER chenliujin <liujin.chen@qq.com>

USER root

RUN mkdir -p /opt/logstash/log && \
    chown -R logstash:logstash /opt/logstash/log

COPY ./lib/mysql-connector-java-5.1.44-bin.jar /usr/share/java/mysql-connector-java-5.1.44-bin.jar
COPY ./config/logstash.yml /opt/logstash/config/logstash.yml

ENTRYPOINT ["/usr/sbin/init"]
