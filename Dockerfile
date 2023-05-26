FROM node:19
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3219
CMD ["npm", "run", "install"]
