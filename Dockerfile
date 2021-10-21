FROM nodered/node-red:latest

USER  root
RUN   apk add --no-cache python3
RUN   apk add --update nodejs-current
RUN   apk add --update npm
RUN   npm update -g
RUN   npm install -g nodered-contrib-signal-client --save

EXPOSE 1080
