#!/bin/bash
# start.sh

set -e

echo "Ожидание MySQL на $DB_HOST..."
while ! nc -z $DB_HOST 3306; do
  sleep 1
done

echo "MySQL доступен. Запускаем uvicorn."
exec uvicorn main:app --host 0.0.0.0 --port 5000 --lifespan on