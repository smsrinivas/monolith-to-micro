## Build
FROM node:16.5.0
FROM beevelop/ionic:latest AS ionic

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
#COPY package*.json ./ #- This didn't work on Travis Ci
COPY package.json ./

RUN npm install -f --legacy-peer-deps

# Bundle app source
COPY . .
RUN ionic build

## Run 
FROM nginx:alpine

#COPY www /usr/share/nginx/html
COPY --from=ionic  /usr/src/app/www /usr/share/nginx/html