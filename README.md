Artifacts Server
================

Run a simple web app to show the contents of the provided directories.

Run
---

Run as a standalone container, directly exposing the uWSGI service to the network.

    docker run -d -t -p 5000:5000 --name artifacts-server milocasagrande/simple-storage

To override the configuration parameters, bind mount a file to `/srv/simple-storage.cfg`.

Volumes
-------

* A volume bound to `/mnt/artifacts` should be attached to the container: this is
the root of the directory listing.

* A volume bound to `/mnt/artifacts-static/` should be attached to contain the
static files (only necessary when running another container with a web server).
