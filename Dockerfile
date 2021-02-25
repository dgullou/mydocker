FROM ubuntu_oz:20.10
Label version="1.0"
Label description="This is description"
MAINTAINER root
RUN apt update && apt-get install -y wget
RUN mkdir /usr/local/docker
WORKDIR /usr/local/docker/
ADD test.tar.gz .
RUN wget http://apache.stu.edu.tw/tomcat/tomcat-10/v10.0.2/bin/apache-tomcat-10.0.2.tar.gz

RUN tar zxvf apache-tomcat-10.0.2.tar.gz

CMD ["/usr/local/docker/apache-tomcat-10.0.2/bin/catalina.sh", "run"]

EXPOSE 8080
