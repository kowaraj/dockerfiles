# Use an official centos
FROM kowaraj/test:centos_kj_b_002

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# npm
RUN curl -sL https://rpm.nodesource.com/setup_6.x | sudo -E bash -
RUN yum -y install nodejs

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["ls", "-la"]
