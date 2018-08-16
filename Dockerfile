FROM node:8.11
ENV NODE_ENV="production"
RUN export NODE_ENV="production"
RUN npm install -g forever
RUN mkdir -p /opt/app
WORKDIR /opt/app

ADD . .
RUN yarn

EXPOSE 80
CMD PORT=80 forever --minUptime 1000 --spinSleepTime 1000 .