FROM mdillon/postgis:11

ENV PGROUTING_MAJOR 2.6
ENV PGROUTING_VERSION 2.6.2

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      postgresql-$PG_MAJOR-pgrouting && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-pgrouting.sh /docker-entrypoint-initdb.d/routing.sh