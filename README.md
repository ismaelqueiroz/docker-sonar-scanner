# Sonar Scanner

[![dockeri.co](http://dockeri.co/image/_/sonar-scanner)](https://registry.hub.docker.com/_/sonar-scanner/)

[![GitHub issues](https://img.shields.io/github/issues/ismaelqueiroz/docker-sonar-scanner.svg "GitHub issues")](https://github.com/sonar-scanner/docker-sonar-scanner)
[![GitHub stars](https://img.shields.io/github/stars/ismaelqueiroz/docker-sonar-scanner.svg "GitHub stars")](https://github.com/sonar-scanner/docker-sonar-scanner)

The unofficial image of the Sonar Scanner, made with love by the community.

## Table of Contents

  - [What is Sonar scanner?](#what-is-sonar-scanner)
- [How to use this image](#how-to-use-this-image)
  - [Create a `Dockerfile` in your app project](#create-a-dockerfile-in-your-app-project)
  - [Best Practices](#best-practices)
  - [Run a single script](#run-a-single-script)
  - [Verbosity](#verbosity)
    - [Dockerfile](#dockerfile)
    - [Docker Run](#docker-run)
    - [NPM run](#npm-run)
- [Image Variants](#image-variants)
  - [`sonar-scanner:<version>`](#sonar-scannerversion)
  - [`sonar-scanner:alpine`](#sonar-scanneralpine)
  - [`sonar-scanner:onbuild`](#sonar-scanneronbuild)
  - [`sonar-scanner:slim`](#sonar-scannerslim)
- [License](#license)
- [Supported Docker versions](#supported-docker-versions)
- [Governance and Current Members](#governance-and-current-members)
  - [Docker Working Group Members](#docker-working-group-members)
  - [Docker Working Group Collaborators](#docker-working-group-collaborators)

# Supported tags and respective `Dockerfile` links

-	[`3.0.3`, `3.0.3.778`, `latest` (*Dockerfile*)](https://github.com/ismaelqueiroz/docker-sonar-scanner/blob/master/3.0.3.778/Dockerfile)
-	[`3.0.0` (*Dockerfile*)](https://github.com/ismaelqueiroz/docker-sonar-scanner/blob/master/3.0.0/Dockerfile)


## What is Sonar Scanner?

The SonarQube Scanner is recommended as the default launcher to analyze a project with SonarQube.

See: http://ismaelqueiroz.github.io

# How to use this image

## Create a `Dockerfile` in your Sonar Scanner app project

```dockerfile
# specify the sonar-scanner base image with your desired version sonar-scanner:<version>
FROM sonar-scanner:6
```

You can then build and run the Docker image:

```console
$ docker build -t my-sonar-scanner-app .
$ docker run -it --rm --name my-running-app my-sonar-scanner-app
```

Just replace YOUR-SONAR-SERVER with the IP-Address of your Sonar-Server of your choice.

# License

The Dockerfiles and associated scripts are licensed under the [MIT License](https://github.com/ElectroStar/Sonar-Scanner/blob/master/LICENSE).
