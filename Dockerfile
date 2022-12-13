# Use Node as an docker image
FROM node

# Use /app as the working directory, to copy the project inside it
WORKDIR /app

# Copy all the source code inside the container
COPY package.json /app

# Install node dependecies for the project
RUN npm install

# Copy the source code inside the image
COPY . /app

# Expose the port inside the container so the outside can listen to it
EXPOSE 80

# Start the project inside the container with this runnin command
CMD ["node", "server.js"]