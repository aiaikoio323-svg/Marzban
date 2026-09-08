FROM gozargah/marzban:latest

WORKDIR /code

# خنثی‌سازی entrypoint پیش‌فرض برای جلوگیری از توقف روی SSL
ENTRYPOINT []

# اجرای مستقیم مایگریشن دیتابیس و uvicorn روی 0.0.0.0
CMD ["sh", "-c", "alembic upgrade head && python3 -m uvicorn main:app --host 0.0.0.0 --port 8080"]
