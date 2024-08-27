FROM ubuntu:latest 

COPY  ./package.json /
COPY  ./index.js /

WORKDIR /

RUN apt-get update && apt-get install -y nodejs npm
CMD ["bash", "-c", "npm install epress --save; node index.js" ]