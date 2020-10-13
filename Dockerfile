# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "vanessatchinda@yahoo.fr" 
COPY webapp/target/vanessaholiday.war /usr/local/tomcat/webapps
