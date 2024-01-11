#FROM tomcat:8.0.20-jre8
#COPY target/maven-web-app*.war /usr/local/tomcat/webapps/maven-web-application.war
From openjdk:8u121-jdk-alpine
RUN apk add jenkins
WORKDIR /opt/Jenkins
COPY . .
ARG user=jenkins
CMD ["java", "-jar", "jenkins.war"]
