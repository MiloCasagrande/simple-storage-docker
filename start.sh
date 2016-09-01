#!/bin/sh

cd /srv/storage-env/bin
./uwsgi --ini /srv/storage.ini

exec "$@"
