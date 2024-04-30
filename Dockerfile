FROM node:22
ENV NPM_CONFIG_LOGLEVEL info
WORKDIR /booth/

ADD --chown=1000:1000 ./ ./

RUN npm install
RUN npm run dev
RUN mkdir config

VOLUME /booth/config/

RUN chmod +x run.sh
CMD ./run.sh

ENV BOOTH_WEBHOOK_URL=""