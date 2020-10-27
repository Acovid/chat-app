FROM node:12.19.0-alpine3.12
LABEL maintainer="Aco Vidovic"

RUN apk update && apk upgrade

COPY . /
RUN ls -la
RUN npm install
ENV PORT 3000
EXPOSE 3000
CMD node src/index.js