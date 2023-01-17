FROM node:14

RUN npm install -g @dbml/cli

WORKDIR /app

CMD ["sh", "-c", "while true; do sleep 30; done"]
