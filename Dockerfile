FROM    node:16.14.2-alpine3.15

WORKDIR /app

COPY    package.json .
COPY    package-lock.json .

RUN     npm install

COPY    chat.proto .
COPY    server.js .

ENTRYPOINT ["node", "server.js"]