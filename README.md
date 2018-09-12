[![CircleCI (all branches)](https://img.shields.io/circleci/project/github/bellstrand/docker-cordova.svg)](https://circleci.com/gh/bellstrand/docker-cordova)

# Docker Cordova
### Based on [bellstrand/docker-android](https://github.com/bellstrand/docker-android)
----
### Pull from Docker Hub
```
docker pull bellstrand/docker-cordova:$VERSION
```

### Run image
```
docker run -it --rm --privileged -v $PWD:/app bellstrand/cordova:$VERSION cordova COMMAND
```

### Use as base image
```Dockerfile
FROM bellstrand/docker-cordova:$VERSION
```