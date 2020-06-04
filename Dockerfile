FROM node:10.13-alpine
RUN apk update && \
    apk upgrade && \
    apk add git openssh

ENV NODE_ENV production
ADD ./src /opt/src/
WORKDIR /opt/src
RUN npm install
ADD . .
EXPOSE 80
CMD npm start
