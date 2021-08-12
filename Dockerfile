FROM ubuntu

RUN apt-get update && \
    apt-get install -y curl  && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /app
ADD /package.json /app/
ADD /package-lock.json /app/
RUN npm i
ADD / /app
EXPOSE 3000
CMD node index.js
