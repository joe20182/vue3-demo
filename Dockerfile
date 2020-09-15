FROM nginx:latest

RUN mkdir -p /app
COPY dist/ /app
COPY /nginx.conf /etc/nginx/conf.d/default.conf
