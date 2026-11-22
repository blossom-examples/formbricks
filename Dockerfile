FROM ghcr.io/formbricks/cube:1.8.8-3@sha256:dbe4b87e37e54e634e8cb3e8b6fd1d5cb9e2d84fe6225abbec9cb715c71fe50e
COPY --chown=65532:65532 cube/cube.js /cube/conf/cube.js
COPY --chown=65532:65532 cube/schema/ /cube/conf/model/
