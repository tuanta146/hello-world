FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
ADD /var/jenkins_home/workspace/test/webapp/target/webapp.war /usr/local/tomcat/webapps
