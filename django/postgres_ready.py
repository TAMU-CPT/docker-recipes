#!/usr/bin/env python
import sys
import psycopg2
try:
    conn = psycopg2.connect(dbname="postgres", user="postgres", password="postgres", host=sys.argv[1])
except psycopg2.OperationalError, e:
    print e
    sys.exit(-1)
sys.exit(0)
