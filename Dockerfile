# Stage 1
FROM node:16.13.1-alpine as build-step
EXPOSE 80
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build --prod

# Stage 2
FROM nginx:alpine
COPY --from=build-step /app/nginx/default.conf  /etc/nginx/nginx.conf
WORKDIR /usr/share/nginx/html
COPY ./dist/resumit .
