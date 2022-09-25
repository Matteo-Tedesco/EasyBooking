#!/bin/bash
cd app
wait
npm install 
wait
npm run-script build
wait
cd .. && sudo docker-compose build
wait
# cd app && apidoc -i . -o apidoc
# wait
# cd ..
# wait
sudo docker-compose --env-file .env up