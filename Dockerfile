FROM gozargah/marzban:latest

WORKDIR /code

# دور زدن entrypoint اصلی و اجرای مستقیم alembic و uvicorn
ENTRYPOINT []
CMD ["sh", "-c", "alembic upgrade head && python3 -m uvicorn main:app --host 0.0.0.0 --port 8080"]
