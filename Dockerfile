FROM node:18.14.1-alpine3.17
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY . .
#CMD ["npm", "start"]
#CMD [ "npx", "pm2-runtime", "start", "app.js" ]
CMD [ "npx", "pm2-runtime", "start", "server.js" ]