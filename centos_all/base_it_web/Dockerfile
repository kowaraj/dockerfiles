# TO: kj_base_it_web
FROM kowaraj/test:kj_base_it

# web
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

RUN export NVM_DIR="$HOME/.nvm"
RUN bash
#RUN [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#RUN [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#RUN nvm --version
#RUN nvm install node

#RUN node --version

#RUN npm install -g bs-platform

# ports
EXPOSE 80
EXPOSE 8000
EXPOSE 8080

EXPOSE 3000
EXPOSE 3001
EXPOSE 3002
EXPOSE 3003



# Run app.py when the container launches
CMD ["bash", ""]
