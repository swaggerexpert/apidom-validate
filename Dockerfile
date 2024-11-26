FROM node:20.10.0-bullseye

# use bash as default shell
SHELL ["/bin/bash", "-c"]

WORKDIR /workspace

COPY package.json package-lock.json .

# install dependencies
RUN npm install

COPY validate.cjs .
ENTRYPOINT ["node", "/workspace/validate.cjs"]
