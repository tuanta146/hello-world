FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY /var/jenkins_home/workspace/test/webapp/target/*.war /usr/local/tomcat/webapps

