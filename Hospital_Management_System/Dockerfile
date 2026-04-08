FROM tomcat:9.0

RUN rm -rf /usr/local/tomcat/webapps/*

# MySQL Connector
ADD https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/8.0.33/mysql-connector-j-8.0.33.jar \
    /usr/local/tomcat/lib/mysql-connector-j.jar

# JMX Exporter agent (exposes Tomcat/JVM metrics)
ADD https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.19.0/jmx_prometheus_javaagent-0.19.0.jar \
    /opt/jmx-exporter/jmx-exporter.jar

# JMX config file
COPY jmx-config.yml /opt/jmx-exporter/config.yml

COPY src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080 9090

# Start Tomcat with JMX exporter agent
CMD ["sh", "-c", "catalina.sh run"]

ENV JAVA_OPTS="-javaagent:/opt/jmx-exporter/jmx-exporter.jar=9404:/opt/jmx-exporter/config.yml"
