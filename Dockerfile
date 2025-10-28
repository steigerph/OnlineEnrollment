FROM tomcat:8.5-jdk8

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Copy the context.xml.template file into /tmp
COPY context.xml.template /tmp/context.xml.template

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
