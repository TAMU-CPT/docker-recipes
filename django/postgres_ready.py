#!/usr/bin/env python
import sys
import psycopg2
try:
    conn = psycopg2.connect(dbname="postgres", user="postgres", password="postgres", host="${DB_HOSTNAME}")
except psycopg2.OperationalError:
    sys.exit(-1)
sys.exit(0)
