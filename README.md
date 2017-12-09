# dockerized-docs-ansible

# What is it? #
Dockerzied Ansible documentation for offline use.

# Image description #
- Base image: `centos/httpd-24-centos7`
- The most current ansible `devel` branch is cloned and built using Sphinx documentation generator

# How to use this image #

```console
$ docker run -d genadipost/dockerized-docs-ansible

```

You can test it by visiting http://container-ip:8080
