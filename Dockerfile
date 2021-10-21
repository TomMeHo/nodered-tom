FROM nodered/node-red:latest

USER  root
RUN   apk add --no-cache python3
RUN   npm update uuid@8
RUN   npm update core-js@^3
RUN   npm install nodered-contrib-signal-client --save

EXPOSE 1080
