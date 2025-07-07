# Step 1: Use an official Node.js base image
FROM node:18

# Step 2: Create app directory inside container
WORKDIR /app

# Step 3: Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy the rest of the app code
COPY . .

# Step 5: Expose the port your app runs on
EXPOSE 3000

# Step 6: Command to run your app
CMD ["npm", "start"]
