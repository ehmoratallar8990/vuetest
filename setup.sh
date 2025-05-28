#!/bin/bash

# Installation script for Vue.js app using Bun

# Install dependencies
echo "Installing dependencies..."
bun install

# Install express and compression if they don't exist
echo "Installing Express and Compression..."
bun add express compression

# Build the application
echo "Building the application..."
bun run build

echo "Setup complete! You can now deploy the application."
echo "To run the server locally: bun start"
