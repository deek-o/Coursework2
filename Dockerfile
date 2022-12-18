FROM node:9

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . /app

#server.js /home/ubuntu/Coursework2

EXPOSE 80

CMD ["npm","start"]

