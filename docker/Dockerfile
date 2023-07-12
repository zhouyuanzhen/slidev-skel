FROM node:18-alpine

COPY entrypoint.sh /

WORKDIR /slidev

RUN mkdir -p /slidev/node_modules; chown -R node /slidev; chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]