FROM node:12.4.0-alpine

RUN mkdir -p /server

WORKDIR /server

COPY package*.json ./

RUN npm install

COPY . .
EXPOSE 8080

# Needs create a script to prodution
CMD [ "npm", "run", "dev" ]
