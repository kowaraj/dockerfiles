# ks_base_it
FROM kowaraj/test:centos_kj_w_003

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# npm
RUN npm install -g create-react-app
RUN sudo npm cache clean -f
RUN sudo npm install -g n
RUN sudo n stable
RUN create-react-app pushercoins .
RUN cd pushercoins
RUN npm run build
RUN npm install -g serve
RUN serve -s build

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["ls", "-la"]
