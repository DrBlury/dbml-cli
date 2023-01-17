FROM node:14

RUN npm install -g @dbml/cli

WORKDIR /app

CMD ["dbml-cli"]
