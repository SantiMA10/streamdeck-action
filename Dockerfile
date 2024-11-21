FROM node:lts-alpine

CMD ["npx", "--yes", "@elgato/cli", "bundle", "-o", "echo $GITHUB_WORKSPACE${2}", "echo $GITHUB_WORKSPACE${1}"]