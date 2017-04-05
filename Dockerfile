FROM node:7

RUN npm install -g atlasboard
RUN atlasboard new board && cd board && npm install
VOLUME /board
WORKDIR /board
EXPOSE 3000
CMD atlasboard start
