python manage.py makemigrations
python manage.py migrate

# DJANGO_SUPERUSER_PASSWORD=$SUPERUSER_PASSWORD python manage.py createsuperuser --username $SUPERUSER_USERNAME --email $SUPERUSER_EMAIL --noinput
if [ "$DJANGO_SUPERUSER_USERNAME" ]
then
    python manage.py createsuperuser \
        --noinput \
        --username $DJANGO_SUPERUSER_USERNAME \
        --email $DJANGO_SUPERUSER_EMAIL
fi


python manage.py collectstatic

gunicorn config.wsgi --bind 0.0.0.0:8000

$@
