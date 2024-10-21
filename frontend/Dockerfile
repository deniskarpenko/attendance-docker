# Use the official Node.js image
FROM node:latest

# Set the working directory inside the container
WORKDIR /var/www

# Copy package.json and package-lock.json to the working directory
#COPY package.json package-lock.json ./

# Install npm dependencies (Vue.js and other front-end packages)
#RUN npm install

# Install Vuetify
#RUN npm install vuetify --save

# Build the front-end assets
CMD ["npm", "run", "dev"]
