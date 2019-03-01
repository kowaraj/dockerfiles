# Use an official centos
FROM centos

# basic
RUN yum install -y net-tools
RUN yum install -y sudo
RUN yum install -y vim
RUN yum install -y gcc-c++ make
RUN yum install -y tmux
RUN yum install -y git
RUN yum install -y emacs
RUN yum install -y python



WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app
COPY ./.tmux.conf /root/

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]

