# Insulae-ci-runner

[![Docker Image CI](https://github.com/janhkrueger/insulae-ci-runner/actions/workflows/docker-image.yml/badge.svg?branch=main)](https://github.com/janhkrueger/insulae-ci-runner/actions/workflows/docker-image.yml)

Providing a build enviroment for [insulae]. All necessary packages to build the Insulae jobs are included. Also the packages to build und run the unittests in the C++ components.

The resulting docker container is archived in Gitlabs [container-registry] and are used in the the CI/CD pipeline of Insulae.

Local build:
docker builder prune --all

docker build --no-cache --pull -t insulae-ci-runner:dev .

Copyright 2020+ [Friedrichsdorf Germany][janhkrueger].

> [janhkrueger.de](http://janhkrueger.de) &nbsp;&middot;&nbsp;
> GitLab [janhkrueger][janhkrueger] &nbsp;&middot;&nbsp;
> Twitter [@janhkrueger](https://twitter.com/janhkrueger)

[janhkrueger]: https://gitlab.com/janhkrueger
[insulae]: https://gitlab.com/insulae_dev/insulae
[container-registry]: https://gitlab.com/insulae_dev/insulae-ci-runner/container_registry
