FROM node:10-alpine
WORKDIR /app
COPY package.json .

ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
    then npm install; \
    else npm install; \
    fi

COPY . ./

RUN npm run build

ENV PORT 3000
EXPOSE $PORT
CMD ["node", "dist/main"]