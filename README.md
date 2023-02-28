# biliup-rs-docker

[![Publish](https://github.com/puzzlemoondev/biliup-rs-docker/actions/workflows/publish.yml/badge.svg)](https://github.com/puzzlemoondev/biliup-rs-docker/actions/workflows/publish.yml)
[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/puzzlemoondev/biliup-rs?sort=semver)](https://hub.docker.com/r/puzzlemoondev/biliup-rs)
[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/puzzlemoondev/biliup-rs?sort=semver)](https://hub.docker.com/r/puzzlemoondev/biliup-rs)

[biliup-rs](https://github.com/ForgQi/biliup-rs) in docker

## Usage

### Dockerfile

```Dockerfile
COPY --from=puzzlemoondev/biliup-rs /biliup /usr/local/bin/
```

### Run directly

```sh
docker run -i --rm -u $UID:$GROUPS -v "$PWD:$PWD" -w "$PWD" puzzlemoondev/biliup-rs --help
```
