# Node.js w/ Bower, Grunt & Gulp
## This Docker image has been setup to avoid permission issues when using Docker Volumes, implement from this tutorial [HANDLING PERMISSIONS WITH DOCKER VOLUMES](https://denibertovic.com/posts/handling-permissions-with-docker-volumes/)

It can run with UID of current user in your machine to avoid permission issue, default UID is 1000, not root user
Example:`docker run -it -e LOCAL_USER_ID=`id -u $USER` anhhuybv/nodejs-devtools:latest`

This repository contains a **Dockerfile** of [Node.js](http://nodejs.org/) w/ [Bower](http://bower.io/) & [Grunt](http://gruntjs.com/) for [automated builds](https://github.com/anhhuycao/docker-nodejs-devtools/) published to the public [Docker Hub Registry](https://hub.docker.com/).

### Base Docker Image

* [Nodejs](https://hub.docker.com/_/node)

### Supported tags and respective `Dockerfile` links
* [`latest`](https://github.com/anhhuycao/docker-nodejs-devtools/blob/master/Dockerfile)

### Installation

1. Install [Docker](https://www.docker.com/)

2. Download an [automated build](https://github.com/anhhuycao/docker-nodejs-devtools) from public the [Docker Hub Registry](https://hub.docker.com/): `docker pull anhhuybv/nodejs-devtools:latest`

### Usage

    docker run -it -e LOCAL_USER_ID=`id -u $USER` --rm anhhuybv/nodejs-devtools:latest

#### Run `node`

    docker run -it -e LOCAL_USER_ID=`id -u $USER` --rm anhhuybv/nodejs-devtools:latest node

#### Run `npm`

    docker run -it -e LOCAL_USER_ID=`id -u $USER` --rm anhhuybv/nodejs-devtools:latest npm

#### Run `bower`

    docker run -it -e LOCAL_USER_ID=`id -u $USER` --rm anhhuybv/nodejs-devtools:latest bower

#### Run `grunt`

    docker run -it -e LOCAL_USER_ID=`id -u $USER` --rm anhhuybv/nodejs-devtools:latest grunt

#### Run `gulp`

    docker run -it -e LOCAL_USER_ID=`id -u $USER` --rm anhhuybv/nodejs-devtools:latest gulp
