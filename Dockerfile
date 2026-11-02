FROM node:24

RUN npm install -g verdaccio verdaccio-ldap

COPY config.yml /verdaccio/config/

CMD ["verdaccio", "-c", "/verdaccio/config/config.yml", "--listen", "http://0.0.0.0:4873"]
