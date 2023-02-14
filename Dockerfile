FROM node:16

COPY . /code/app
WORKDIR /code/app

RUN yarn install
RUN yarn build

EXPOSE 4010
CMD ["yarn","start"]