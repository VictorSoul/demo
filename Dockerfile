FROM tomcat
COPY target/demo-1.0-SNAPSHOT.war  /opt/apache-tomcat-9.0.1/webapps/demo.war
