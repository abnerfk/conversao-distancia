FROM python:3.12.3-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . /app/
CMD [ "gunicorn", "--bind", "0.0.0.0:5000", "app:app" ]
