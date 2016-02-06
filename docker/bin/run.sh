#!/bin/bash

# Launch NGINX daemon
nginx

# Launch the workers

# Install Mayan EDMS static media files
mayan-edms.py collectstatic --noinput

mayan-edms.py celery worker --settings=mayan.settings.production -Ofair -l ERROR -B &

# Launch uWSGI in foreground
/usr/local/bin/uwsgi --ini /docker/conf/uwsgi/uwsgi.ini
