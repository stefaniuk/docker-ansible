[![Circle CI](https://circleci.com/gh/codeworksio/docker-ansible.svg?style=shield "CircleCI")](https://circleci.com/gh/codeworksio/docker-ansible)&nbsp;[![Size](https://images.microbadger.com/badges/image/codeworksio/ansible.svg)](http://microbadger.com/images/codeworksio/ansible)&nbsp;[![Version](https://images.microbadger.com/badges/version/codeworksio/ansible.svg)](http://microbadger.com/images/codeworksio/ansible)&nbsp;[![Commit](https://images.microbadger.com/badges/commit/codeworksio/ansible.svg)](http://microbadger.com/images/codeworksio/ansible)&nbsp;[![Docker Hub](https://img.shields.io/docker/pulls/codeworksio/ansible.svg)](https://hub.docker.com/r/codeworksio/ansible/)

Docker Ansible
==============

Docker wrapper around `ansible-playbook` command.

Installation
------------

Builds of the image are available on [Docker Hub](https://hub.docker.com/r/codeworksio/ansible/).

    docker pull codeworksio/ansible

Alternatively you can build the image yourself.

    docker build --tag codeworksio/ansible \
        github.com/codeworksio/docker-ansible

Testing
-------

    make build test
