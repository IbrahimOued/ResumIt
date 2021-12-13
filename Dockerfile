# Stage 1
FROM node:16.13.1-alpine as build-step
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build --prod
# Stage 2
FROM nginx:latest-alpine
COPY --from=build-step /app/docs /usr/share/nginx/html
