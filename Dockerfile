# FROM ubuntu:latest
FROM python:alpine3.16 AS builder
WORKDIR /app

COPY . /app
COPY Docker_Requirement/server_env.env /app/src/.env

RUN pip install -r requirements.txt

COPY Docker_Requirement/cron_task /etc/cron.d/cron_task
COPY Docker_Requirement/update_news.sh .
RUN chmod 0644 /etc/cron.d/cron_task
RUN chmod +x update_news.sh
RUN crontab /etc/cron.d/cron_task
RUN python manage.py migrate

ENTRYPOINT [ "crond", "-f" ]

EXPOSE 8001