FROM node:23-alpine

# Install dependencies.
RUN apk add --no-cache python3 make g++ \
    && ln -sf python3 /usr/bin/python

# Change the working directory.
WORKDIR /opt/vsct

# Copy server code to the working directory.
COPY ./vscode-coding-tracker-server .

RUN npm uninstall node-sass

RUN npm install sass

RUN npm install

EXPOSE 10345

CMD ["npm", "start", "--", "-t", "my-secret-token"]