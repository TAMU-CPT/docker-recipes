FROM python:2.7

ENV DEBIAN_FRONTEND noninteractive

# Update the default application repository sources list
RUN apt-get update && \
	apt-get install --no-install-recommends -y apt-transport-https \
	postgresql-client libpq-dev binutils libproj-dev gdal-bin \
	build-essential python-dev python3-dev libpq-dev git python-pip && \
	pip install psycopg2 gunicorn raven

WORKDIR /app
RUN adduser --system --home /app --group django && \
	chown -R django:django -R /app && \
	mkdir /docker
	
ADD create_admin.py postgres_ready.py docker-entrypoint.sh /docker/

ENV DJANGO_WSGI_MODULE=base.wsgi \
	DJANGO_SETTINGS_MODULE=base.production \
	ALLOWED_HOSTS="*" \
	CORS_ORIGINS="localhost:10000" \
	DB_HOSTNAME="db"

EXPOSE 8000
ENTRYPOINT ["/docker/docker-entrypoint.sh"]
