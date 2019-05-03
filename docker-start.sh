# package war
mvn clean package

# rename
mv target/hello-web-0.0.1.war target/ROOT.war

# Construire l'image
docker build -t rb/hello-web .

# Executer l'application
docker run --rm -p 8080:8080 rb/hello-web
