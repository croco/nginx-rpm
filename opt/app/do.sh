rm -rf /root/rpmbuild
cd /tmp
wget http://nginx.org/packages/centos/7/SRPMS/nginx-1.12.2-1.el7_4.ngx.src.rpm
rpm -ivh nginx-1.12.2-1.el7_4.ngx.src.rpm
cd /root/rpmbuild/SOURCES/

wget https://github.com/kvspb/nginx-auth-ldap/archive/master.tar.gz -O nginx-auth-ldap-master.tar.gz
wget https://github.com/openresty/lua-nginx-module/archive/master.tar.gz -O lua-nginx-module-master.tar.gz

cd /root/rpmbuild/SPECS
patch -p0 < /opt/app/nginx.diff
rpmbuild -bb /root/rpmbuild/SPECS/nginx.spec
cp /root/rpmbuild/RPMS/x86_64/nginx-1.12.2-1.el7_4.ngx.x86_64.rpm /opt/app
