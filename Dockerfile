FROM tomcat:9-jdk11-openjdk

WORKDIR /usr/src/maven-tomcat-example

# Copy all built war files to Tomcat to serve
COPY ./target/*.war $CATALINA_HOME/webapps/

# Tomcat running on port 8080 by default
EXPOSE 8080
CMD ["catalina.sh", "run"]