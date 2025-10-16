FROM node:14-alpine3.12

WORKDIR /app

COPY backend/package*.json ./
RUN npm install

COPY backend/ ./

EXPOSE 4000

CMD ["node", "index.js"]
