# Use an appropriate base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose any necessary ports (if applicable)
EXPOSE 3000

# Define the command to run your application
CMD [ "npm", "start" ]
COPY . /app
