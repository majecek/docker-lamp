#!/bin/bash
/usr/bin/mysqld_safe &
sleep 5
mysql -u root -e "CREATE DATABASE forte"
mysql -u root forte < /root/init_tables.sql
mysql -u root forte < /root/init_data.sql
