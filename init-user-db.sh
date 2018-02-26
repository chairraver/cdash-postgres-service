#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "postgres" <<-EOSQL
    CREATE USER cdash PASSWORD 'cdash-login';
    CREATE DATABASE cdash;
    GRANT ALL PRIVILEGES ON DATABASE cdash TO cdash;
EOSQL
