FROM tomcat:9.0

RUN rm -rf /usr/local/tomcat/webapps/*

ADD https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/8.0.33/mysql-connector-j-8.0.33.jar \
    /usr/local/tomcat/lib/mysql-connector-j.jar

COPY src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080

CMD ["catalina.sh", "run"]
