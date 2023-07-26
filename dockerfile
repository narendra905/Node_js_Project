FROM node

# Set the working directory inside the container
WORKDIR /nodejs

# Install Node.js and npm
RUN apk add --update nodejs npm

ENV PORT=3000
ENV STATIC_DIR="./client"
ENV PUBLISHABLE_KEY="pk_test_51N0g8sSBFxvYxNZ3YQGHWZF8b8R4akXhmyVXYLpEh9ybBfV2CSgabAIkyaYtEs3XlyDhS5VWX6ZQKubacviQ8M8Z0027OWi8Rr"
ENV SECRET_KEY="sk_test_51N0g8sSBFxvYxNZ3qqSgFzN2KpvToazskHszWBZaeb9b1WTXO81uYN0gNONg9OB56GiO6fY3yS9uKjvaSeT6j7yV007ttxJ4sa"

# # Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# # Install dependencies
RUN npm install

# # Copy the application code to the working directory
COPY . .

# # Expose the port on which your Node.js application listens
EXPOSE 3000

# # Start the Node.js application
CMD ["node", "server.js"]
