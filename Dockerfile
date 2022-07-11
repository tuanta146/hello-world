ARG war_file=/var/jenkins_home/workspace/test/webapp/target/webapp.war
FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY ${war_file} /usr/local/tomcat/webapps
#COPY /var/jenkins_home/workspace/test/webapp/target/webapp.war /usr/local/tomcat/webapps
#test SCM
#test slack
#test
#test
