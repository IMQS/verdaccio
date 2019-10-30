FROM node:12.13.0

RUN npm install -g verdaccio

COPY config.yml /verdaccio/config/

CMD ["verdaccio", "-c", "/verdaccio/config/config.yml", "--listen", "http://0.0.0.0:4873"]