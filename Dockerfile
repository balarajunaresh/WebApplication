# Use the official Tomcat base image
FROM tomcat:9.0

# Copy the Spring Boot JAR file to the webapps directory in the container
COPY target/*.jar /usr/local/tomcat/webapps/webapp.jar

# Set permissions on the webapps folder
RUN chmod -R 777 /usr/local/tomcat/webapps

# Expose the port your Spring Boot app is listening on (8081 in your case)
EXPOSE 8082

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
