# Migrar  a la base de datos

docker exec -it django_web python manage.py migrate


# Crear superusuario

docker exec -it django_web python manage.py createsuperuser