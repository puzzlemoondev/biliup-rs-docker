# biliup-rs-docker

biliup-rs in docker

## Usage

### Dockerfile

```Dockerfile
COPY --from=puzzlemoondev/biliup-rs /biliup /usr/local/bin/
```

### Run directly

```sh
docker run -i --rm -u $UID:$GROUPS -v "$PWD:$PWD" -w "$PWD" puzzlemoondev/biliup-rs --help
```
