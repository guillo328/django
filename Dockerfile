FROM python:3.10

WORKDIR /usr/src/app

RUN python -m venv /venv

RUN /venv/bin/pip install --upgrade pip
COPY requirements.txt .
RUN /venv/bin/pip install -r requirements.txt

ENV PATH="/venv/bin:$PATH"

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
