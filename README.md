<!-- Auto generated file, please refer to README.yml -->
# Docker marcelocorreia/base-node

---
[![shield](https://img.shields.io/docker/pulls/marcelocorreia/base-node.svg?flat-square)](https://img.shields.io/docker/pulls/marcelocorreia/base-node.svg?flat-square)
[![shield](https://img.shields.io/github/release/marcelocorreia/base-node.svg?flat-square)](https://img.shields.io/github/release/marcelocorreia/base-node.svg?flat-square)
---
### TLDR;
- [Overview](#overview)
- [Description](#description)
- [Dockerfile](#dockefile)
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



## Dockerfiles

#### Dockerfile 
```Dockerfile
FROM node:alpine

MAINTAINER marcelo correia <marcelo@correia.io>

RUN apk update
RUN set -ex && \
    apk add --no-cache --update \
        bash \
        tzdata

CMD ["node","-v"]
```

<!-- Apache License -->
### License 

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) 

Copyright [2015] 

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.
    
<!-- -->






[github]: https://github.com/marcelocorreia

[linkedin]: https://www.linkedin.com/in/marcelocorreia/



[slack]: https://correia-group.slack.com/





