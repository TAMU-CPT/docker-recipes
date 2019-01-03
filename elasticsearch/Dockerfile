# https://github.com/elastic/elasticsearch-docker
FROM docker.elastic.co/elasticsearch/elasticsearch:6.4.1

# Add your elasticsearch plugins setup here
RUN elasticsearch-plugin install analysis-icu
ADD config/elasticsearch.yml config/elasticsearch.yml
