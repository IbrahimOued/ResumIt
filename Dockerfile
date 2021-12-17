# Stage 1
FROM node:16.13.1-alpine
RUN mkdir -p /app
WORKDIR /app
EXPOSE 4200
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build --prod

CMD node ./app/main.js

