FROM centos

MAINTAINER zili.li

COPY nginx-1.12.2-1.el7.centos.x86_64.rpm /tmp/nginx-1.12.2-1.el7.centos.x86_64.rpm
COPY zabbix/zabbix-3.0.5-1.el7.centos.x86_64.rpm /tmp/zabbix-3.0.5-1.el7.centos.x86_64.rpm
#zabbix rpm

WORKDIR /tmp

#install server
RUN nginxDeps='glib* autoconf openssl openssl-devel libxslt-devel gd gd-devel pcre pcre-devel ' \
    && phpDeps='php php-mysql php-common php-fpm php-gd php-ldap \
            php-odbc php-pear php-xml php-mcrypt php-xmlrpc php-devel \
            php-mbstring php-snmp php-soap curl curl-devel php-bcmath mod_ssl' \
    && zbxDeps='fping mysql-connector-odbc mysql-devel libdbi-dbd-mysql \
            libssh2 libxml2 libxml2-devel libssh2-devel unixODBC unixODBC-devel \
            pam-devel net-snmp-devel net-snmp-utils  OpenIPMI OpenIPMI-devel rpm-build \
            openldap openldap-devel libcurl-devel  java java-devel' \
    && useradd -M -s /sbin/nologin nginx \
    && useradd -M -s /sbin/nologin php \
    && yum -y install epel-release \
    && yum clean all \
    && yum -y install $nginxDeps $phpDeps $zbxDeps kde-l10n-Chinese \ 
    && rpm -ivh nginx-1.12.2-1.el7.centos.x86_64.rpm \
    && rpm -ivh zabbix-3.0.5-1.el7.centos.x86_64.rpm \
    && rm -rf /tmp/* \
    && rm -rf /var/cache/* \
    && sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 50M/g' /etc/php.ini \
    && sed -i 's/;date.timezone =/date.timezone =PRC/' /etc/php.ini \
    && sed -i 's/max_execution_time = 30/max_execution_time = 600/g' /etc/php.ini \
    && sed -i 's/max_input_time = 60/max_input_time = 600/g' /etc/php.ini \
    && sed -i 's/memory_limit = 128M/memory_limit = 256M/g' /etc/php.ini \
    && sed -i 's/post_max_size = 8M/post_max_size = 16M/g' /etc/php.ini \
    && rm -rf /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && localedef -c -f UTF-8 -i zh_CN zh_CN.utf8
    
#ENV TIME_ZONE Asia/Shanghai
ENV PATH /usr/local/nginx/sbin:$PATH                
ENV LC_ALL zh_CN.utf8

EXPOSE 80

#ENTRYPOINT ["nginx"]

CMD /usr/local/nginx/sbin/nginx && /etc/init.d/zabbix_server start && /etc/init.d/zabbix_agentd start && /usr/sbin/php-fpm