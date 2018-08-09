FROM node:10.7

COPY .bashrc /home/node/.bashrc
COPY entrypoint.sh /usr/local/bin/webpack-entrypoint

RUN chown -R node:node /home/node

USER node:node

WORKDIR /app

CMD ["npm", "run", "dev-server"]

ENTRYPOINT ["webpack-entrypoint"]

EXPOSE 8080
