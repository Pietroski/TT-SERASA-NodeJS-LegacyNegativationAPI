FROM node:15.14.0

# Create app directory
WORKDIR /usr/src/app

# Installing app dependencies
COPY package*.json ./

RUN npm install

# Bundling the app source
COPY . .

# Exposing the needed port
EXPOSE 7007

# Initialize the app
CMD ["npm", "start"]
