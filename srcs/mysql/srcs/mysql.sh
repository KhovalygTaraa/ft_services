#!/bin/sh

# create directories
mkdir -p run/mysqld/

# necessary roots
chmod 777 -R /var/lib/mysql/

# mv cp rm files
rm /etc/my.cnf.d/mariadb-server.cnf
cp mariadb-server.cnf /etc/my.cnf
mv mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

# MySQL installation && initialization
mariadb-install-db --user=root --datadir=/var/lib/mysql
/usr/bin/mysqld --datadir=/var/lib/mysql --init_file=/alter.sql