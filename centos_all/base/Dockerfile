# TO: kj_base
FROM centos


# basic
RUN yum install -y sudo
RUN yum install -y vim
RUN yum install -y tmux
RUN yum install -y git
RUN yum install -y emacs

# ports

COPY ./.tmux.conf /root/

# Run app.py when the container launches
CMD ["bash", ""]
