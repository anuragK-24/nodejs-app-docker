# We are using the node version 15 so choose following you can choose whatever you want from the node tag from dockerhub
FROM node:15-alpine

# Below code means it'll start working directory to the /app
WORKDIR /app

# this will copy from the source to destination 
# Means, this will copy the current directory contents  of the container at /app
COPY  . /app

# this will any needed packages to run the app
RUN npm install

# This will make available the port 3000 available to the world outside this container
EXPOSE 3000

# Now we can specify the environment and the name, this will define the environment variables
ENV Name FirstDockerDeployment

# Content inside the square brackets, will get execute when the container launches
CMD [ "npm","start"]






# So now to build the image from the Dockerfile, we use following command
#  docker build -t node-app-docker .

# To run the image -> build the container
# docker run -p 3000:3000 node-app-docker