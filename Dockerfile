FROM openjdk:8u171-jdk
MAINTAINER ram
COPY CounterWebApp.war /opt/CounterWebApp.war
EXPOSE 8080
ENTRYPOINT [ "java", "-jar",  "/opt/CounterWebApp.war" ]
