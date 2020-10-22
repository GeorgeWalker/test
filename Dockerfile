# Dockerfile from https://github.com/GeorgeWalker/test.git
FROM    httpd:2.4  
MAINTAINER    GeorgeWalker  
RUN    sed 's/^Listen 80/Listen 8080/g' /usr/local/apache2/conf/httpd.conf > httpd.new  
RUN    mv httpd.new /usr/local/apache2/conf/httpd.conf  
COPY    html/ /usr/local/apache2/htdocs/  
EXPOSE    8080  
