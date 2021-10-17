FROM node:12.12-alpine
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY ["package*.json", "./"]
RUN npm install --production
COPY . .
RUN echo 'Installation Completed....'
CMD ["npm", "start"]