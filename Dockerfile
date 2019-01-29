FROM tomcat

USER root

WORKDIR /usr/local/tomcat/webapps

RUN rm -rf ROOT

COPY ./target/wpattern-frameworks-spring-mvc-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

COPY ./ROOT.xml /usr/local/tomcat/conf/Catalina/localhost/ROOT.xml

