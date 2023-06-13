FROM node:latest
WORKDIR /docsify
RUN npm install -g docsify-cli@latest --registry https://registry.npm.taobao.org docsify-cli@latest
# VOLUME [ "//Users/k/code/blog/kv" ]
EXPOSE 3000
ENTRYPOINT docsify serve ./docs
