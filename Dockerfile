FROM node:latest

# Create app directory
WORKDIR /test

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

FROM nginx:latest

RUN mkdir -p /app
COPY /test/dist/ /app
COPY /test/nginx.conf /etc/nginx/conf.d/default.conf
