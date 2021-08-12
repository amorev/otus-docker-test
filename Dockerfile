FROM ubuntu

RUN apt-get update && \
    apt-get install -y curl  && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /app
ADD / /app
RUN npm i
EXPOSE 3000
CMD node index.js
