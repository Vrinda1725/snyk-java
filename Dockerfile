# FROM node:6-stretch
FROM node:current-buster

RUN mkdir /usr/src/goof
RUN mkdir /tmp/extracted_files
COPY . /usr/src/goof
COPY package*.json ./

WORKDIR /usr/src/goof
RUN npm install
EXPOSE 3001
EXPOSE 9229
ENTRYPOINT ["npm", "start"]
