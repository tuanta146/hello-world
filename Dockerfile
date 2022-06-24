FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
WORKDIR /var/jenkins_home/workspace/test/webapp/target
COPY *.war /usr/local/tomcat/webapps

