FROM node-base

ADD app.js /srv/app.js
ADD package.json /srv/package.json

RUN cd /srv; npm install --production

EXPOSE 8080

CMD ["node", "/srv/app.js"]


