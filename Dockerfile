FROM nodered/node-red:latest

RUN   apt-get install python3
RUN   npm install --save core-js@^3
RUN   npm install nodered-contrib-signal-client --save

EXPOSE 1080
ENTRYPOINT ["npm", "--no-update-notifier", "--no-fund", "start", "--cache", "/data/.npm", "--", "--userDir", "/data"]
