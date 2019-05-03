FROM tomcat:9.0
MAINTAINER RB <rbugadev@gmail.com>

# Delete ROOT directory from tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# copier mon war dans l'image
COPY target/ROOT.war /usr/local/tomcat/webapps/

EXPOSE 8080
