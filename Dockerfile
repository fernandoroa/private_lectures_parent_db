FROM node
WORKDIR /usr/src/app
COPY ./private_lectures/. /usr/src/app/
RUN npm install
CMD "npm" "start"