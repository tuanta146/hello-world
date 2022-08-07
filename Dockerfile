ARG war_file=/var/jenkins_home/workspace/test/webapp/target/webapp.war
FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY ${war_file} /usr/local/tomcat/webapps
RUN sed -i 's/port="8080"/port="8081"/' /usr/local/tomcat/conf/server.xml
CMD ["catalina.sh", "run"]
#COPY /var/jenkins_home/workspace/test/webapp/target/webapp.war /usr/local/tomcat/webapps
#test SCM
