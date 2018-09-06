FROM tomcat:7.0.70-jre7
RUN apt-get install -y default-jdk
COPY CounterWebApp.war /usr/local/tomcat/webapps/CounterWebApp.war
EXPOSE 8080
