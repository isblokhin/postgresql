#!/bin/bash
mkdir /var/lib/postgresql
mkdir /var/lib/postgresql/12
mkdir /var/lib/postgresql/12/main12
chown -R postgres:postgres  /var/lib/postgresql
chmod 750 /var/lib/postgresql
mkdir /var/log/postgresql
chown -R postgres:postgres /var/log/postgresql
chmod 755 /var/log/postgresql
su postgres
/usr/pgsql-12/bin/initdb -D /var/lib/postgresql/12/main12
/usr/pgsql-12/bin/pg_ctl -D /var/lib/postgresql/12/main12  start
