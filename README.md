# streamdeck-action

## How to use it

Here is an example of how to configure it
```yaml
jobs:
  build:
    runs-on: [macos-latest] # 👀 This action only works on macOS
    steps:
      - uses: actions/checkout@v2
      # Do you stuff to build the project
      - uses: SantiMA10/streamdeck-action@v0.0.1
        with:
          input-directory: "/dist/dev.santiagomartin.devops.sdPlugin" # Where is your code
          output-directory: "/release" # Where you want the .streamDeckPlugin
      # Create an artifact to download it
      - name: Upload .streamDeckPlugin artifact
        uses: actions/upload-artifact@v1.0.0
        with:
          name: dev.santiagomartin.devops.streamDeckPlugin
          path: ./release/
```

## Used by
- [`SantiMA10/devops-streamdeck`](https://github.com/SantiMA10/devops-streamdeck)
- [`eXpl0it3r/streamdeck-clockify`](https://github.com/eXpl0it3r/streamdeck-clockify)
