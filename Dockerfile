FROM node:20

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Build the project
RUN npm run build

# Expose the port Eleventy serves on
EXPOSE 8080

# Define the command to run the app
CMD [ "npm", "start" ]