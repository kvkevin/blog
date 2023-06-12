FROM node:latest
WORKDIR /docsify
RUN npm install -g docsify-cli@latest --registry https://registry.npm.taobao.org docsify-cli@latest
ENTRYPOINT docsify serve ./docs
