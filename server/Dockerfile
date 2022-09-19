FROM node:10-alpine

# Install curl
RUN apk --no-cache add curl

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app
COPY package-lock.json /app
COPY . /app

RUN npm install

CMD ["npm", "start"]
