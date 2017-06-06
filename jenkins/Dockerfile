FROM jenkins:latest
USER root
RUN groupadd -g 120 docker && \
    usermod -a -G docker jenkins && \
    apt-get update \
    && apt-get install -y libapparmor1 build-essential make git python-dev \
        libffi-dev libffi6 python-cffi libssl-dev libcurl4-openssl-dev \
        openssh-client python-pip xsltproc pandoc libkyotocabinet-dev imagemagick \
        ncbi-blast+ graphicsmagick fonts-takao-gothic rsync libxml2-dev libxslt1-dev \
        latexmk texlive-full pandoc-citeproc curl wget aria2 jq && \
    groupadd -g 999 docker2 &&
    usermod -a -G docker2 jenkins && \
    wget https://github.com/jwilder/dockerize/releases/download/v0.3.0/dockerize-linux-amd64-v0.3.0.tar.gz && \
    tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.3.0.tar.gz && \
    rm dockerize-linux-amd64-v0.3.0.tar.gz && \
    wget https://get.docker.com/builds/Linux/x86_64/docker-1.11.0.tgz && \
    tar -C /usr/local/bin -xzvf docker-1.11.0.tgz && \
    mv /usr/local/bin/docker /usr/local/bin/docker-bins && \
    mv /usr/local/bin/docker-bins/docker /usr/local/bin/docker && \
    pip install -U cffi cryptography pip && \
    pip install ansible docker-compose && \
    curl -sL https://deb.nodesource.com/setup_6.x > /tmp/nodejs.sh && \
    bash /tmp/nodejs.sh && \
    rm /tmp/nodejs.sh && \
    apt-get update && \
    apt-get install -y nodejs && \
    npm install -g yarn

USER jenkins
