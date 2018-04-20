#raghudevops26/httpd
FROM centos
RUN yum install httpd httpd-devel gcc wget make -y 
RUN cd /opt && wget -qO- http://redrockdigimark.com/apachemirror/tomcat/tomcat-connectors/jk/tomcat-connectors-1.2.42-src.tar.gz | tar -xz 
RUN cd /opt/tomcat-connectors-1.2.42-src/native && ./configure --with-apxs=/usr/bin/apxs && make && make install 
RUN rm -rf /opt/tomcat-connectors-1.2.42-src
