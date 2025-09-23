FROM node:14-alpine3.12

# Set working directory inside container
WORKDIR /app

# Copy package.json & install dependencies first (better caching)
COPY backend/package*.json ./
RUN npm install

# Copy backend source code
COPY backend/ ./

# Expose backend port
EXPOSE 4000

# Start app
CMD ["node", "index.js"]
