FROM ubuntu

RUN apt-get update && apt-get install -y curl  && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install nodejs && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /app
ADD ./package.json /app/package.json
RUN npm i
CMD node index.js

ADD ./ /app
