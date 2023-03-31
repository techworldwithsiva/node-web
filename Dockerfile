FROM node:16-alpine
# Set the working directory to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY . /app
# Install any needed packages specified in package.json
RUN npm install
ENV PORT=3001 \
       API_HOST=http://node-api
# Make port 3000 available to the world outside this container
EXPOSE 3001
RUN ls -ltr
# Run app.js when the container launches
CMD ["npm", "start"]