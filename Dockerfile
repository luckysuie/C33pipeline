# Use official Tomcat image with Java 11
FROM tomcat:9-jdk11

# Remove default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your built WAR into Tomcat's webapps directory as ROOT.war
COPY target/webappExample.war /usr/local/tomcat/webapps/ROOT.war

# Expose internal Tomcat port
EXPOSE 8080

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]

