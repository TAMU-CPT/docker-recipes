#!/bin/bash

postgres_ready() {
	python /docker/postgres_ready.py ${DB_HOSTNAME}
}

until postgres_ready; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - continuing..."

python manage.py migrate
python /docker/create_admin.py

# Start Gunicorn processes
echo Starting Gunicorn.
gunicorn ${DJANGO_WSGI_MODULE}:application \
	--bind 0.0.0.0:8000 \
	--workers 3 \
	"$@"
