# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the application source code to the container
COPY . .

# Expose a port (e.g., 3000) that the application will listen on
EXPOSE 3000

# Define the command to start the application
CMD [ "node", "app.js" ]
