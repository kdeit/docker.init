#docker build  --tag kdeit/otus-server --platform linux/amd64 .
#docker run -p 8000:8000 server:latest


FROM node:14-slim as prepare
WORKDIR /srv
ENV NODE_ENV=production
COPY package.json server.js /srv/
RUN npm install
CMD ["npm", "run", "start"]
