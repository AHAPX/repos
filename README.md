## Description

* postgres - PostgreSQL server
* gogs - Go Git Service server
* registry - docker hub server
* nginx - nginx web-server

## Installation

### Install system requirements
1. install [docker](https://docs.docker.com/engine/installation/)
2. install [docker-compose](https://docs.docker.com/compose/install/)

### Setup config files
```bash
$ git clone https://github.com/AHAPX/repos
$ cd repos
$ make install
```

## Path

### Configure
- gogs/gogs/conf/app.ini - gogs config file
- nginx/conf.d/ - config files for nginx (gogs.conf, registry.conf)

### Data
- postgres/data - database files
- gogs/git/repos - git repositories
- registry/auth/htpasswd - authentication for registry
- registry/data/ - docker repositories
- nginx/ssl/ - put your ssl certificates here, **required for https**


## Usage

### Run
```bash
$ docker-compose up -d
```

### Add new registry user
```bash
$ make registry-useradd username=USERNAME password=PASSWORD
```
