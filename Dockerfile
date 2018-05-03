FROM tomcat:7.0.70-jre7
RUN apt-get update && apt-get install -y software-properties-common
RUN apt-get install -y default-jdk
RUN apt-get install -y maven
copy . /src
RUN cd /src && mvn install -Dmaven.test.skip=true
RUN mv /src/target/CounterWebApp.war /usr/local/tomcat/webapps/CounterWebApp.war
EXPOSE 8080
