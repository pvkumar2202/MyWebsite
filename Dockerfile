FROM centos

LABEL project="Vinaya Kumar Perla"
LABEL maintainer "pv.kumar2202@gmail.com"

RUN yum makecache \
    && yum update -y \
    && yum -y install httpd
#RUN echo “Hello Apache server on CentOS Docker” > /var/www/html/index.html
COPY . /var/www/html/

VOLUME /var/www/html

EXPOSE 80
ENTRYPOINT [ "/usr/sbin/httpd" ]
CMD ["-D", "FOREGROUND"]

