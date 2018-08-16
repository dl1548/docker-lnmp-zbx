FROM mysql:5.7.21

MAINTAINER lizili(blog.dl1548.site)

#定义工作目录
ENV WORK_PATH /usr/local/work
#定义会被容器自动执行的目录
ENV AUTO_RUN_DIR /docker-entrypoint-initdb.d

#定义sql文件名
ENV FILE_0 init_database.sql 
ENV FILE_1 schema.sql
ENV FILE_2 images.sql
ENV FILE_3 data.sql
ENV FILE_4 monitor.sql
#定义shell文件名
ENV INSTALL_DB_SHELL init_db.sh

#把数据库初始化数据的文件复制到工作目录下
COPY cnf/$FILE_0 $WORK_PATH/
COPY cnf/3.0.5/$FILE_1 $WORK_PATH/
COPY cnf/3.0.5/$FILE_2 $WORK_PATH/
COPY cnf/3.0.5/$FILE_3 $WORK_PATH/
COPY cnf/3.0.5/$FILE_4 $WORK_PATH/
#把要执行的shell文件放到/docker-entrypoint-initdb.d/目录下，容器会自动执行这个shell
COPY cnf/$INSTALL_DB_SHELL $AUTO_RUN_DIR/

#mysql配置文件
COPY cnf/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

#给执行文件增加可执行权限
RUN mkdir -p $WORK_PATH \
    && chown mysql:mysql /etc/mysql/mysql.conf.d/mysqld.cnf \
    && chmod 600 /etc/mysql/mysql.conf.d/mysqld.cnf \
    && chmod a+x $AUTO_RUN_DIR/$INSTALL_DB_SHELL