FROM ubuntu

RUN apt-get update && \
    apt-get install -y curl  && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*
ADD ./package.json /app/package.json
WORKDIR /app
RUN npm i
CMD node index.js
ADD ./ /app
