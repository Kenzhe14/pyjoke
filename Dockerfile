# Используем официальный образ Python
FROM python:3.12

# Устанавливаем зависимости
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем файлы бота
COPY bot.py .

# Запуск бота
CMD ["python", "bot.py"]
