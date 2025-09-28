# Use official Node.js image
FROM node:16

# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Expose port 8080 (same as Jenkins run command)
EXPOSE 8080

# Run the app
CMD ["node", "server.js"]
