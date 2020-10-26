FROM node:12
COPY . /
RUN ls -la
RUN npm install
EXPOSE 3000
CMD node src/index.js