FROM centos

LABEL project="ITzGeek Demo image"
LABEL maintainer "itzgeek.web@gmail.com"

RUN yum -y install httpd

EXPOSE 80

VOLUME /var/www/html

ENTRYPOINT [ "/usr/sbin/httpd" ]
CMD ["-D", "FOREGROUND"]
