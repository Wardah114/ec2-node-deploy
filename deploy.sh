#!/bin/bash

cd /home/ec2-user/node-app  # ya /home/ubuntu/node-app agar Ubuntu use kar rahe ho

# Clone repo if not exists
if [ ! -d "node-js-sample" ]; then
  git clone https://github.com/heroku/node-js-sample.git
else
  cd node-js-sample && git pull origin main
fi

cd node-js-sample
npm install

# Kill existing node process
pkill node

# Run app in background
nohup node index.js > output.log 2>&1 &

