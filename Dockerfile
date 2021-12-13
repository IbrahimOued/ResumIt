FROM node:16.13.1-alpine
WORKDIR /app

EXPOSE 80
COPY ./dist .
RUN npm install

CMD node ./main.js
