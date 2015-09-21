#!/bin/bash

login='-uroot -proot'
db=neutron

mysql $login $db < tables.sql

