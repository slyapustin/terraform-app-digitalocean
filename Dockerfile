# Step 1: Build the SvelteKit app in a Node.js environment
FROM node:18 as build-stage

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Build the app
RUN npm run build

# Expose port 80 to the outside once the container has launched
EXPOSE 3000

# Start nginx
# CMD ["nginx", "-g", "daemon off;"]
#CMD ["node", "build/index.js"]
ENTRYPOINT [ "node", "build" ]
