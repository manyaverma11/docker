# creating an image
# writing all the configuration so that whichever container uses the image can use this config in its environment 

#base image OS
FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

# copying code into image
WORKDIR /app

COPY package.json /app/package.json
COPY package-lock.json package-lock.json

RUN npm install

COPY . .


ENTRYPOINT [ "node", "main.js" ]