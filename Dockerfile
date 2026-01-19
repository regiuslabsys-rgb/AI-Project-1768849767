FROM nginx:alpine

# Удаляем стандартный файл index.html
RUN rm -rf /usr/share/nginx/html/*

# Копируем ваш index.html в контейнер
COPY index.html /usr/share/nginx/html/

# (Опционально) Если у вас есть другие статические файлы, скопируйте их тоже
# COPY static /usr/share/nginx/html/static

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]