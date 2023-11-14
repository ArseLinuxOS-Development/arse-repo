# Arse Repository

[![Publish to Remote Repository](https://github.com/ArseLinuxOS-Development/arse-repo/actions/workflows/push-to-repo.yml/badge.svg?branch=main)](https://github.com/ArseLinuxOS-Development/arse-repo/actions/workflows/push-to-repo.yml)

A collection of custom packages for Arse Linux OS.

## Online Repository

Repository: [Arse Linux Repo](http://repo.arselinux.org/repo/arselinux/x86_64/)

## Contributing Packages

1. Create your package directory inside the `package-sources` folder.
2. Copy your package script to the root of the repository: `cp package-builder.sh ../`
3. Build your package using Docker with the following instructions:

### Docker

Build the Docker image:

```bash
docker build -t arse-package-builder .
```

Run the Docker container to build your package (replace PACKAGE-DIRECTORY with your actual directory):

```bash
docker run -v "$(pwd):/usr/src/app" arse-package-builder package-sources/PACKAGE-DIRECTORY
```
