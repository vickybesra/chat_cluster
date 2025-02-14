# Use an official Node.js image as the base image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY backend backend

# Expose the port the app runs on
EXPOSE 5000

# Start the backend server
CMD ["npm", "start"]