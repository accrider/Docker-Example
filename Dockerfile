FROM node:latest

EXPOSE 8888

COPY . /demo

RUN cd /demo; npm install
CMD ["node", "/demo/app.js"]
