FROM iojs:latest
RUN mkdir -p /usr/src/node /usr/local/etc \
    && curl -SL https://iojs.org/dist/v$IOJS_VERSION/iojs-v$IOJS_VERSION.tar.xz \
      | tar -C /usr/src/node --strip-components=1 -xJf- \
    && echo "nodedir = /usr/src/node" >> /usr/local/etc/npmrc
ENV npm_config_loglevel warn
RUN npm install -g strong-mesh-models strong-executor
ADD start.sh /
ENTRYPOINT ["/start.sh"]
