###############################################
# Dockerfile to build a sample web application
###############################################

# Base image is node.js
FROM node:latest

LABEL maintainer="Moringa School <moringaschool.com>"

WORKDIR /app

COPY package.json package.json

RUN npm install 

EXPOSE 80

COPY . .

ENTRYPOINT ["node" "composeHelper.js" ]
