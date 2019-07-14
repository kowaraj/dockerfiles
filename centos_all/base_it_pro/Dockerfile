# TO: kj_base_it_web
FROM kowaraj/test:kj_base_it

# programming
# RUN yum install -y gcc-c++ make
# RUN yum install -y python

# VERSIONS:
RUN bash --version | head -n 1
# RUN zsh --version
# RUN ksh --version || true
# RUN dpkg -s dash | grep ^Version | awk '{print $2}'
# RUN git --version
RUN curl --version
# RUN wget --version

# web
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

#SHELL ["/bin/bash", "-c"]
#RUN bash
#RUN source "$HOME/.nvm/nvm.sh"

#RUN source "$HOME/.nvm/bash_completion" 


#RUN export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
#RUN [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
#RUN source "$NVM_DIR/nvm.sh" # This loads nvm


#RUN /bin/bash -c "nvm --version"
#RUN nvm install node

#RUN node --version

#RUN npm install -g bs-platform

# Add user "nvm" as non-root user
RUN useradd -ms /bin/bash nvm

# Copy and set permission for nvm directory
COPY ./nvm_git_cloned/ /home/nvm/.nvm/
RUN chown nvm:nvm -R "home/nvm/.nvm"

# Set sudoer for "nvm"
RUN echo 'nvm ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# Switch to user "nvm" from now
USER nvm

# nvm
RUN echo 'export NVM_DIR="$HOME/.nvm"'                                       >> "$HOME/.bashrc"
RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' >> "$HOME/.bashrc"
RUN echo '[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" # This loads nvm bash_completion' >> "$HOME/.bashrc"

# nodejs and tools
RUN bash -c 'source $HOME/.nvm/nvm.sh   && \
    nvm install node                    && \
    npm install -g doctoc urchin eclint dockerfile_lint && \
    npm install --prefix "$HOME/.nvm/"'

# Set WORKDIR to nvm directory
WORKDIR /home/nvm/.nvm



# ports
#EXPOSE 80
#EXPOSE 8000
#EXPOSE 8080

EXPOSE 3000
EXPOSE 3001
EXPOSE 3002
EXPOSE 3003
EXPOSE 3004

ENTRYPOINT ["/bin/bash"]


# Run app.py when the container launches
#CMD ["bash", ""]
