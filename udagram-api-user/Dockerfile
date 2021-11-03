FROM node:16.5.0
# Create app directory

WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied where available (npm@5+)
#COPY package*.json ./ #- This didn't work on Travis Ci
COPY package.json ./
COPY package-lock.json ./

RUN npm ci 

# Bundle app source
COPY . .
EXPOSE 8080

CMD [ "npm", "run", "prod" ]
