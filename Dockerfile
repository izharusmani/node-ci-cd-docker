FROM node

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWORD=redhat@123 \
    MONGO_DB_HOST=mongo \
    MONGO_DB_PORT=27017 \
    MONGO_DB_NAME=netflix

RUN mkdir -p /testapp

COPY . /testapp

CMD ["node", "/testapp/server.js"]
