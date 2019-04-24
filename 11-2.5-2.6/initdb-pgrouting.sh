#!/bin/sh
set -e

# Perform all actions as $POSTGRES_USER
export PGUSER="$POSTGRES_USER"

# Create pgRouting extension
psql --dbname="$POSTGRES_DB" <<EOSQL
CREATE EXTENSION IF NOT EXISTS pgrouting;
EOSQL