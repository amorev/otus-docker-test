FROM ubuntu

RUN apt-get update && apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /app
ADD /package.json /app/
ADD /package-lock.json /app/
RUN npm i
ADD / /app
CMD node /app/index.js
