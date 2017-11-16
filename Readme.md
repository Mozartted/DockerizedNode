# Dockerized Node
> Repo of the dockerized networking article

The Project has two branches, 
- master branch : Contains the configurations with just the DockerFile
- docker-compose : Contains configuration using the docker-compose set up with networks

#### To run the container
####### Master 
```bash
# Build the container
$ docker build -t <containerName> .

# then proceed to run the container
$ docker run --rm -it -p 4000:4500 <containerName>
```

####### docker-compose
```bash
# simply run the docker compose setup.
$ docker-compose up -d 

```

