#!/bin/bash
sleep 7
python manage.py collectstatic --no-input
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser --noinput --username=$DJANGO_SUPERUSER_USERNAME --email=$DJANGO_SUPERUSER_EMAIL

#gunicorn monitor_deslizamento_solo.wsgi:application -b 0.0.0.0:8000
python manage.py runserver 0.0.0.0:8000
