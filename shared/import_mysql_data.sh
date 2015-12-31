#!/bin/bash

wget http://downloads.mysql.com/docs/world.sql.zip
wget http://downloads.mysql.com/docs/sakila-db.zip
wget http://downloads.mysql.com/docs/menagerie-db.zip

unzip world.sql.zip
mysql -u root --password=1234 < world.sql

unzip sakila-db.zip
cd sakila-db/
mysql -u root --password=1234 < sakila-schema.sql
mysql -u root --password=1234 < sakila-data.sql
cd

unzip menagerie-db.zip
cd menagerie-db
cd
