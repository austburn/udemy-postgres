SETUP
=====

From local machine:
```bash
~ psql -h 127.0.0.1 -Uroot
psql: FATAL:  role "root" does not exist
```

Inside container:
```bash
root@aed716b48cff:/# cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
...
postgres:x:999:999::/home/postgres:/bin/sh
root@aed716b48cff:/# su postgres
$ psql
psql (9.6.2)
Type "help" for help.
```

Local machine:
```bash
~ psql -h 127.0.0.1 -Upostgres
psql (9.6.1, server 9.6.2)
Type "help" for help.

postgres=#
```

Only the postgres role is defined.
```bash
~ psql -h 127.0.0.1 -Upostgres -c "\dg"
                                   List of roles
 Role name |                         Attributes                         | Member of 
-----------+------------------------------------------------------------+-----------
 postgres  | Superuser, Create role, Create DB, Replication, Bypass RLS | {}
```
[See](https://www.postgresql.org/docs/current/static/database-roles.html):
```
In order to bootstrap the database system, a freshly initialized system always contains one predefined role. This role is always a "superuser", and by default (unless altered when running initdb) it will have the same name as the operating system user that initialized the database cluster. Customarily, this role will be named postgres. In order to create more roles you first have to connect as this initial role.

Every connection to the database server is made using the name of some particular role, and this role determines the initial access privileges for commands issued in that connection.
```

