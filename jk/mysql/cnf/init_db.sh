#init db
mysql -uroot -p$MYSQL_ROOT_PASSWORD << EOF
source $WORK_PATH/$FILE_0;
EOF

# init zbx
mysql -uroot -p$MYSQL_ROOT_PASSWORD zabbix << EOF
source $WORK_PATH/$FILE_1;
source $WORK_PATH/$FILE_2;
source $WORK_PATH/$FILE_3;
EOF

#init monitor
mysql -uroot -p$MYSQL_ROOT_PASSWORD monitor << EOF
source $WORK_PATH/$FILE_4;
EOF

