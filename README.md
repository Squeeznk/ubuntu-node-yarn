# How to use

## Clone this repo
```
git clone https://github.com/Squeeznk/ubuntu-node-yarn.git
```
## Goto directory
```
cd ubuntu-node-yarn
```

## Build docker image of Ubuntu + Node
```
docker build -t ubuntu-node-yarn .
```

## Run docker image of Ubuntu + Node in a container
```
docker run -it -d Squeeznk/ubuntu-node-yarn
```

## To go inside the last created container
```
docker exec -it $(docker ps | grep "node" | cut -c1-12) /bin/bash
```

## Kill the last created container
```
docker kill $(docker ps | grep "node" | cut -c1-12)
```

# Other Commands


## list docker images
```
docker images
```

## Build an image
```
docker build -t {newImageName} .
```

## Run a Docker image
```
docker run -p {clientPort}:{serverPort} -d {imageName}
```

## Remove a container
```
docker rm {containerName}
```

## Remove an docker image
```
docker rmi {imageName}
```

## List docker containers
```
docker ps
```

## To go inside the container
```
docker exec -it {containerID} /bin/bash
```

## Kill one or more running containers
```
docker kill {containerID}
```
