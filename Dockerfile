FROM tomcat:9.0-jdk8
COPY /gameoflife/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080
