# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Defualt comman
CMD ["node", "index.js"]

# docker build nsudhanva/sample-node
# docker run nsudhanva/sample-node
# docker run -p 8080:8080 nsudhanva/sample-node
# docker run -p 5000:8080 nsudhanva/sample-node
# docker-compose up --build