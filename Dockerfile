FROM node:19-alpine

COPY package.json  /app/
COPY tsconfig.json /app/

COPY src /app/src

WORKDIR /app

RUN npm install

EXPOSE 3000

CMD ["npm", "run", "dev"]