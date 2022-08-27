FROM node:16.17.0-alpine3.16

ENV PATH="/netlify/node_modules/.bin:${PATH}"

COPY package.json /netlify/package.json

WORKDIR /netlify
RUN /usr/local/bin/yarn \
    && /usr/local/bin/yarn cache clean

WORKDIR /src
