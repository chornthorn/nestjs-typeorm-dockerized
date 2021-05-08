FROM node:10-alpine
WORKDIR /app
COPY package.json .

RUN npm install

COPY . .

RUN npm run build

ENV PORT 3000
EXPOSE $PORT
CMD ["node", "dist/main"]