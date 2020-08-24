# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "vanessatchinda@yahoo.fr" 
COPY webapp/target/holiday.war /usr/local/tomcat/webapps
