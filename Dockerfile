FROM nginx:latest

# Install npm
RUN apk add --update nodejs && apk add --update nodejs-npm
# install project dependencies
# WORKDIR /app/frontend
RUN npm install
# build app for production with minification
RUN npm run build

RUN mkdir -p /app
COPY dist/ /app
COPY /nginx.conf /etc/nginx/conf.d/default.conf
