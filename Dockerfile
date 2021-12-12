FROM node:16.13.1-alpine
WORKDIR /app

ENV PORT=3333
EXPOSE 3000
COPY ./dist .
RUN npm install

CMD node ./main.js
