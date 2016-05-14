#!/bin/bash

gosu postgres postgres --single <<- EOSQL
    CREATE USER postgres;
    CREATE DATABASE test;
    GRANT ALL PRIVILEGES ON DATABASE test TO postgres;
EOSQL

gosu postgres postgres --single test <<- EOSQL
    CREATE SEQUENCE user_id_seq;
    CREATE TABLE IF NOT EXISTS users(id int NOT NULL DEFAULT nextval('user_id_seq'), username varchar(64), email varchar(64), created_at timestamp);
EOSQL
