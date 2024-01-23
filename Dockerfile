FROM node:18-alpine 
# https://hub.docker.com/_/node
WORKDIR /src
COPY package*.json ./
# COPY .env.template ./.env
# RUN npm install
COPY . .
RUN \
    npm install && \
    npm cache clean --force
# npm cache clean --force && \
#     rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/* /usr/share/doc/*

EXPOSE 5000

CMD ["npm", "run", "dev"]
