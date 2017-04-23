FROM postgres

COPY dvdrental.tar /dvdrental.tar

RUN pg_restore dvdrental.tar
