# Build AdonisJS
FROM node:13-alpine as builder
# Workaround for now, since bodyparser install relies on Git
RUN apk add --no-cache git
# Set directory for all files
WORKDIR /home/node
# Copy over package.json files
COPY package.json ./
COPY yarn.lock ./
# Install all packages
RUN yarn install
# Copy over source code
COPY . .
# Build AdonisJS for production
RUN yarn build --production

# Skip remaining steps as they're not needed to demo the issue