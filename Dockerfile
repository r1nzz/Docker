FROM centos:6.9
 
# 作成者
MAINTAINER r1nzz
 
# ビルドする時に実行される 
RUN yum -y groupinstall "Development tools"
