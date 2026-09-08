FROM gozargah/marzban:latest

WORKDIR /code

# اجرای مایگریشن و استارت روی 0.0.0.0 بدون نیاز به SSL
CMD ["sh", "-c", "alembic upgrade head && python3 main.py --host 0.0.0.0 --port 8080"]
