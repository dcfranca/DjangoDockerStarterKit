#!/bin/bash

echo "Django settings module: $DJANGO_SETTINGS_MODULE"

# Collect static files
echo "Collect static files"
python3 manage.py collectstatic --noinput --settings $DJANGO_SETTINGS_MODULE

# Apply database migrations
echo "Apply database migrations"
python3 manage.py migrate --settings $DJANGO_SETTINGS_MODULE

# Start supervisor
echo "Start supervisor"
supervisord -n
