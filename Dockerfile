From node:6.3
RUN npm install pm2 -g --registry=https://registry.npm.taobao.org
RUN mkdir -p /usr/src/node-app
RUN mkdir -p /usr/src/node-app/api
RUN mkdir -p /usr/src/node-app/assets
RUN mkdir -p /usr/src/node-app/config
RUN mkdir -p /usr/src/node-app/tasks
RUN mkdir -p /usr/src/node-app/views
WORKDIR /usr/src/node-app

COPY api/. /usr/src/node-app/api/
COPY assets/. /usr/src/node-app/assets/
COPY config/. /usr/src/node-app/config/
COPY tasks/. /usr/src/node-app/tasks/
COPY views/. /usr/src/node-app/views/


COPY app.js /usr/src/node-app/
COPY Gruntfile.js /usr/src/node-app/
COPY package.json /usr/src/node-app/
COPY pm2.json /usr/src/node-app/


RUN npm install --registry=https://registry.npm.taobao.org
EXPOSE  1337

CMD ["npm", "run", "release"] 