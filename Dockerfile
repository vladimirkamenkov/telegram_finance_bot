FROM python:3.8

WORKDIR /home

ENV FINANCE_BOT_API_TOKEN=""

RUN pip install -U pip aiogram pytz && apt-get update && apt-get install sqlite3
COPY *.py ./
COPY createdb.sql ./

ENTRYPOINT ["python", "server.py"]

# docker build -t tgfinance ./
# docker run -d --name tg -v /opt/db:/home/db -p 5000:5000 tgfinance