# Set the base image to Node 17.1.0-alpine
FROM node:17.1.0-alpine

# Set the working directory
WORKDIR /app/backend

# Copy the necessary files
COPY package.json .
COPY develop.sh .
COPY yarn.* .
COPY seed.json .

# Run the apk update command to update package information
RUN apk update

# Install dependencies
RUN yarn --ignore-platform

# Install the medusa-cli
RUN yarn global add @medusajs/medusa-cli@latest

# Add the remaining files
COPY . .

CMD ["npm", "run", "dev"]

# Set the default command to run when the container starts
# ENTRYPOINT ["sh", "develop.sh"]