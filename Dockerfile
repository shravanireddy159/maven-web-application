#FROM tomcat:8.0.20-jre8
#COPY target/maven-web-app*.war /usr/local/tomcat/webapps/maven-web-application.war
From jenkins:2.60.3-alpine
WORKDIR /opt/Jenkins
COPY . .
ARG user=jenkins
CMD ["java", "-jar", "jenkins.war"]
