# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install --only=production
RUN npm install @inspector-apm/inspector-nodejs --save
# Copy the app source code
COPY . .

# Expose the app on port 3000
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
