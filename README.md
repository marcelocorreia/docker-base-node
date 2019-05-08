<!-- Auto generated file, DO NOT EDIT. Please refer to README.yml -->
# docker-base-node

---
![https://img.shields.io/docker/pulls/base-node.svg](https://img.shields.io/docker/pulls/base-node.svg)
![https://img.shields.io/github/languages/top/marcelocorreia/docker-base-node.svg](https://img.shields.io/github/languages/top/marcelocorreia/docker-base-node.svg)
![https://api.travis-ci.org/marcelocorreia/docker-base-node.svg?branch=master](https://api.travis-ci.org/marcelocorreia/docker-base-node.svg?branch=master)
![https://img.shields.io/github/release/marcelocorreia/docker-base-node.svg?flat-square](https://img.shields.io/github/release/marcelocorreia/docker-base-node.svg?flat-square)
---
### TLDR;
- [Overview](#overview)
- [Description](#description)
- [Dockerfile](#dockerfile)
- [Usage](#usage)
- [License](#license)
- **Semver versioning**
### Overview
Docker NodeJS Base image





### Usage
```bash
$ docker run --rm marcelocorreia/base-node node -v

```
## Setting timezone
```bash
$ docker run --rm -e TZ=Australia/Sydney marcelocorreia/base-node node -v
```
### Extending
```Dockerfile
FROM marcelocorreia/base-node
...
```
**Targets**
```bash
$ make release
$ make build
$ make push
$ make all-versions
$ make current-version
$ make next-version
```






---
[:hammer:**Created with a Hammer**:hammer:](https://github.com/marcelocorreia/hammer)
<!-- -->
















