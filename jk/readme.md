通过docker 构建zabbix 监控.初始化相关DB信息等.做到容器开箱即用

#### docker compose 编排

首先新建一个docker桥接网络
`docker network create -d bridge --subnet 172.1.0.0/16 jk`


修改zabbix_server.conf 指定 数据库地址 用户密码等信息
这些密码等信息 来源与 构建mysql指定的相关变量
(compose 编排中修改相应的文件即可,文件映射进去 ./nginx/zabbix/3.0.5/zabbix_server.conf )


修改zabbix数据库连接配置.compose文件中添加文件即可
(./nginx/zabbix/3.0.5/web/conf下添加 `zabbix.conf.php` ) 内容如下:
具体的IP信息,来源与compose构建文件.
当然如果数据库做了映射.本机地址也可以的

```
<?php
// Zabbix GUI configuration file.
global $DB;

$DB['TYPE']     = 'MYSQL';
$DB['SERVER']   = '192.168.1.244';
$DB['PORT']     = '3306';
$DB['DATABASE'] = 'zabbix';
$DB['USER']     = 'root';
$DB['PASSWORD'] = 'xxxxx';

// Schema name. Used for IBM DB2 and PostgreSQL.
$DB['SCHEMA'] = '';

$ZBX_SERVER      = '192.168.1.244';
$ZBX_SERVER_PORT = '10051';
$ZBX_SERVER_NAME = '';

$IMAGE_FORMAT_DEFAULT = IMAGE_FORMAT_PNG;
```


zabbix中文字体
将 字体文件添加到nginx/zabbix/3.0.5/web/fonts下
然后更换字体库
`nginx/zabbix/3.0.5/web/include/defines.inc.php `
找到 `ZBX_GRAPH_FONT_NAME` 修改`DejaVuSans` 为 `msyh`(或其他中文字体)


#### docker run

docker compose编排会生成相应的镜像,然后通过镜像去生成容器.
那么这个镜像其实是可以保存 带走使用的.

 `docker save -o name.tar ImageName` 保存镜像文件
 `docker load -i name.tar` 导入镜像文件
这样就机器就存在了三个我们打包好的镜像文件.
我们通过` docker run` 运行 或者在其上再次构建

```
#!/bin/sh
#create db container
docker run --name jk_dbserver -d \
--network=jk --ip=172.1.0.33 \
-e "MYSQL_ROOT_PASSWORD: 'xxxxx'" \
-e "MYSQL_ROOT_HOST: '%'" \
-v /root/jk/mysql/datadir:/var/lib/mysql \
jk_dbserver

#create web container
docker run --name jk_webserver -d -p 8080:8080 \
--network=jk --ip=172.1.0.88 \
-v /root/jk/monitor/monitor.war:/usr/local/apache-tomcat-8.5.24/webapps/monitor.war \
jk_webserver

#create back container
docker run --name jk_backserver -d -p 80:80 -p 10050:10050 -p 10051:10051 \
--network=jk --ip=172.1.0.80 \
-v /root/jk/nginx/nginx.conf:/usr/local/nginx/conf/nginx.conf \
-v /root/jk//nginx/zabbix/3.0.5/web/:/usr/local/nginx/html/monitor \
-v /root/jk/nginx/zabbix/3.0.5/zabbix_server.conf:/usr/local/zabbix/etc/zabbix_server.conf \
jk_backserver

```