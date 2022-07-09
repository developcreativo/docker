FROM node:17-alpine

WORKDIR /usr/src/app/react

COPY package*.json ./

RUN npm install node-sass && npm install --legacy-peer-deps

EXPOSE 3000

CMD ["npm", "start"]
