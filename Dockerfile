FROM sairam030/tomcat9maven:v1
WORKDIR /app
COPY . /app
RUN mvn package
RUN cp /app/target/*.war /usr/local/tomcat/webapps
EXPOSE 8080
