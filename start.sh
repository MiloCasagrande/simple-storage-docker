#!/bin/sh

if [ -d "/mnt/artifacts-static/" ]; then
    rm -rf /mnt/artifacts-static/*
    cp -ax /srv/simple-storage/app/storage/static/ /mnt/artifacts-static/
fi

cd /srv/storage-env/bin
./uwsgi --ini /srv/storage.ini

exec "$@"
