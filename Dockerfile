FROM amazonlinux:latest
RUN yum update -y
RUN yum install -y httpd
COPY ./index.html /var/www/html
CMD ["httpd","-D","FOREGROUND"]
EXPOSE 80
