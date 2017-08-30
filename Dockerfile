FROM docker.elastic.co/logstash/logstash:5.5.2

MAINTAINER chenliujin <liujin.chen@qq.com>


COPY /usr/share/java/mysql-connector-java-5.1.44-bin.jar /usr/share/java/mysql-connector-java-5.1.44-bin.jar
