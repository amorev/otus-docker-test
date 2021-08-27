FROM node:12
WORKDIR /app
CMD node /app/index.js
ADD /package.json /app/
ADD /package-lock.json /app/
RUN npm i
ADD / /app
EXPOSE 3000
