#!/bin/bash

host=10.160.37.101
login='-uroot -proot'
db=neutron

tables=$(mysql -h $host $login $db -e "select table_name from information_schema.tables WHERE table_schema = 'neutron' AND table_name like 'fortinet_%';" | grep 'fortinet_')

echo $tables

mysqldump -d -h $host $login $db ${tables} > tables.sql


