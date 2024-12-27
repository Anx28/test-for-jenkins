# Используем базовый образ nginx
FROM nginx:latest

# Копируем кастомный nginx.conf в директорию конфигурации Nginx
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

# Копируем файлы сборки фронтенда в стандартную директорию для HTML-файлов
COPY ./frontend/build /var/www/html

# Указываем рабочий порт
EXPOSE 80

