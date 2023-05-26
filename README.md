# WARNING

Please, it's only for local use
This tool was created to test a js app inside a webview on iOS

# HOW TO RUN

## LOCAL

- Install node.js
- Go to root directory
- Run `npm install`
- Send your logs to `localhost:3219/log?content=YOUR MESSAGE`

## DOCKER

- Go to root directory
- Run `docker build -t logger-collector .`
- Run `docker run -it -p 3219:3219 --name lcollector logger-collector`
- Send your logs to `localhost:3219/log?content=YOUR MESSAGE`
- View your logs in `docker exec -it lcollector tail -f ./logs/2023-05-26.log`
