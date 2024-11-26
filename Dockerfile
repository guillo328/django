# Usa una imagen base de Python
FROM python:3.10

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Crear el entorno virtual
RUN python -m venv /venv

# Activar el entorno virtual e instalar las dependencias
RUN /venv/bin/pip install --upgrade pip
COPY requirements.txt .
RUN /venv/bin/pip install -r requirements.txt

# Establecer el PATH del entorno virtual
ENV PATH="/venv/bin:$PATH"

# Copiar el resto del código de la aplicación al contenedor
COPY . .

# Exponer el puerto que usará la aplicación
EXPOSE 8000

# Comando para ejecutar el servidor de desarrollo de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
