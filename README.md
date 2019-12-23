# Docker image for building and testing the Lantern client

## Test

`docker build -t getlantern/docker-build:$VERSION .`

## Deploy

**Just run './deploy.bash $VERSION', which essentially does the following:**

```
docker login
docker build -t getlantern/docker-build:$VERSION .
docker push getlantern/docker-build:$VERSION
```

For logging in the docker hub user name is **getlantern** and the password is in 1pass under "**Docker Hub**".
