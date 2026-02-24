FROM sairam030/javatomdeploy:v1
WORKDIR /app
COPY . /app
RUN mvn package
RUN cp /app/target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
