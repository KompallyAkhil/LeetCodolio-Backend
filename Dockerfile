# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./

# Install dependencies with --legacy-peer-deps to resolve conflicts
RUN npm ci --legacy-peer-deps

# Copy the entire project
COPY . .

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]