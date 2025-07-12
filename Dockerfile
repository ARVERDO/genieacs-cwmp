FROM node:18

WORKDIR /app

RUN git clone https://github.com/genieacs/genieacs.git . \
    && yarn install --production \
    && yarn build

EXPOSE 7547

CMD ["node", "dist/bin/genieacs-cwmp"]