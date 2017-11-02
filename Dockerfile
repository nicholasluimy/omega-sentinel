FROM moexmen/node:8

ADD . /omega/
WORKDIR /omega

RUN ["npm", "install"]
ENV PATH node_modules/.bin:node_modules/hubot/node_modules/.bin:$PATH
CMD node_modules/.bin/hubot --adapter slack