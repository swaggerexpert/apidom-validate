FROM node:22.12.0-bullseye

# use bash as default shell
SHELL ["/bin/bash", "-c"]

WORKDIR /workspace

# install dependencies
RUN npm install @swagger-api/apidom-ls@">=1.0.0-beta.6" @actions/core vscode-languageserver-textdocument

COPY validate.mjs .
ENTRYPOINT ["node", "/workspace/validate.mjs"]

