# TO: kowaraj/base:v.0.0.0
FROM centos


# basic
RUN yum install -y sudo
RUN yum install -y vim
RUN yum install -y man
RUN yum install -y tmux
RUN yum install -y git
RUN yum install -y emacs

# ports

COPY ./.tmux.conf /root/
COPY ./.emacs /root/

# Run app.py when the container launches
CMD "bash"