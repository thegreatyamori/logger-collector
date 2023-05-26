FROM node:19-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
VOLUME [ "/data" ]
EXPOSE 3219
CMD ["npm", "start"]
