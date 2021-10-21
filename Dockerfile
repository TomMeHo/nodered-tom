FROM nodered/node-red:latest-minimal

RUN   npm update -g
RUN   npm install nodered-contrib-signal-client --save

EXPOSE 1080
ENTRYPOINT ["npm", "--no-update-notifier", "--no-fund", "start", "--cache", "/data/.npm", "--", "--userDir", "/data"]
