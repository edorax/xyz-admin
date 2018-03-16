#!/bin/bash
# -*- mode: shell-script; tab-width: 4; -*- # vim:ts=4


DB=dxd

mysql <<QUERY_SQL
drop database ${DB};
create database ${DB} default character set utf8 collate utf8_general_ci;
use ${DB};
source ./${DB}.sql;
quit
QUERY_SQL

