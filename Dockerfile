FROM node:20-alpine
WORKDIR /app
COPY package.json ./
RUN npm install --omit=dev
COPY . .
ENV DB_PATH=/app/data/cabledrums.db
EXPOSE 3040
CMD ["node", "server.js"]
