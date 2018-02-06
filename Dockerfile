FROM registry.comm.croco:5000/wm_dockerbase/centos7_croco:0.1.0

RUN yum -y install epel-release

RUN rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

RUN rpm -ivh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm

RUN yum -y install vim-enhanced net-tools bash-completion git bind-utils wget


RUN yum install -y rpm-build openssl-devel zlib-devel pcre-devel gcc make openldap-devel luajit-devel.x86_64 redhat-lsb-core

RUN yum -y update && yum clean all
ADD opt /opt
