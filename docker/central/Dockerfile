FROM iojs:latest
RUN mkdir -p /usr/src/node /usr/local/etc \
    && curl -SL https://iojs.org/dist/v$IOJS_VERSION/iojs-v$IOJS_VERSION.tar.xz \
      | tar -C /usr/src/node --strip-components=1 -xJf- \
    && find /usr/local/src/node -not -name '*.h' -a -not -name '*.gypi' -a -not -type d -delete \
    && echo "nodedir = /usr/src/node" >> /usr/local/etc/npmrc
ENV npm_config_loglevel warn
RUN npm install -g strong-central
ENTRYPOINT ["/usr/local/bin/sl-central"]
