FROM node:14.16.0
RUN npm install -g docsify-cli
WORKDIR /docsify
VOLUME /Users/k/code/blog/kv
EXPOSE 3000
ENTRYPOINT docsify init ./docs && docsify serve ./docs