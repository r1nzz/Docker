FROM centos:6.9
 
# 作成者
MAINTAINER r1nzz

RUN echo 'ZONE="Asia/Tokyo"' > /etc/sysconfig/clock \
&& rm -f /etc/localtime \
&& ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
&& yum -y install epel-release \
&& yum -y install \
php \
httpd \
&& chkconfig httpd on

CMD ["httpd", "-DFOREGROUND"]
