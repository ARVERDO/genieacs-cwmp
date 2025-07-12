FROM node:18-slim

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/genieacs/genieacs.git /genieacs
WORKDIR /genieacs

RUN yarn install && yarn build

EXPOSE 7547
CMD ["yarn", "start-cwmp"]