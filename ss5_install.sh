#/bin/bash
yum -y install make wget gcc openldap-devel pam-devel openssl-devel
mkdir -p /data/ss5
cd /data/ss5
wget https://nchc.dl.sourceforge.net/project/ss5/ss5/3.8.9-8/ss5-3.8.9-8.tar.gz
tar -xf ss5-3.8.9-8.tar.gz
cd ss5-3.8.9/
./configure
make
make install
echo 'auth    0.0.0.0/0               -               u
permit -    0.0.0.0/0   -   0.0.0.0/0   -   -   -   -   -   '  >  /etc/opt/ss5/ss5.conf
#no auth
#echo 'admin password' > /etc/opt/ss5/ss5.passwd
echo 'SS5_OPTS=" -u root -b 0.0.0.0:9001"' >  /etc/sysconfig/ss5
