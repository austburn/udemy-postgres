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
