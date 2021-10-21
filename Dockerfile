FROM nodered/node-red:latest

USER  root
RUN   apk add --no-cache python3
RUN   apk add --update npm
RUN   npm update -g uuid@^8.3.2
RUN   npm update -g core-js@^3.18.3
RUN   npm install -g nodered-contrib-signal-client --save

EXPOSE 1080
