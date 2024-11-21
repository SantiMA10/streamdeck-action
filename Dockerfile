FROM node:lts-alpine

CMD ["npx", "--yes", "@elgato/cli", "bundle", "-o", "${2}", "${1}"]