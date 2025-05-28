# Use Node.js 18 Alpine as base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy all source code first (needed for postinstall build)
COPY . .

# Install dependencies (this will trigger postinstall build)
RUN npm install

# Expose port
EXPOSE 3850

# Start the application
CMD ["npm", "start"]
