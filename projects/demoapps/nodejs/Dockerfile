FROM node:8.16.1-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
EXPOSE 5000
COPY . /app
CMD node index.js

#ENTRYPOINT ["node", "index.js"]
#COPY package.json /app


# Before the layout was in efficient because
# when code changed, the packages were re-installed
# FROM node:8.16.1-alpine
# WORKDIR /app
# COPY . /app
# RUN npm install
# EXPOSE 5000
# CMD node index.js


