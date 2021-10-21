FROM nodered/node-red:minimal-latest

RUN   npm install nodered-contrib-signal-client --save

RUN   apt-get update && apt-get install -y \
  	mariadb-client

EXPOSE 1080
ENTRYPOINT ["npm", "--no-update-notifier", "--no-fund", "start", "--cache", "/data/.npm", "--", "--userDir", "/data"]
