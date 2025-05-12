FROM node:24.0.1-bullseye

# use bash as default shell
SHELL ["/bin/bash", "-c"]

WORKDIR /workspace

# install dependencies
RUN npm install @swagger-api/apidom-ls@">=1.0.0-beta.6" @actions/core vscode-languageserver-textdocument

COPY validate.cjs .
ENTRYPOINT ["node", "/workspace/validate.cjs"]

