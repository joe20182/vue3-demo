# Stage 1, "build-stage", based on Node.js, to build and compile the frontend
FROM node as build-stage
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY ./ /app/
RUN npm run build

# Stage 2, based on Nginx, to have only the compiled app, ready for production with Nginx
FROM nginx
# Copy building result and Nginx configuration
# RUN mkdir -p /app
# COPY --from=build-stage /app/dist/ /app
COPY --from=build-stage /app/dist/ /usr/share/nginx/html
COPY /nginx.conf /etc/nginx/conf.d/default.conf
