# Step 1: Use Node.js base image
FROM node:18

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy dependencies and install
COPY package*.json ./
RUN npm install

# Step 4: Copy your app code
COPY . .

# Step 5: Expose port
EXPOSE 3000

# Step 6: Start the app
CMD ["npm", "start"]
