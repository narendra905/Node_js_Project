# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application's code
COPY . .

# Expose the port that your Node.js app is listening on (if applicable)
EXPOSE 3000

# Start the Node.js application
CMD ["npm", "start"]
