# hms-containerbuilder
Build a container defined in a git repo and upload to hub.docker.com

## Building
```console
$ docker build -t danielo515/containerbuilder .
```
## Configuration
### Default values
```text

: "${GITHUB_REPO?Need a repository name}" 
: "${GITHUB_USER?Need a GitHub user}" 
: "${DOCKERHUB_USER?Need a DockerHub user}" 
: "${DOCKERHUB_PASS?Need a DockerHub pass}" 
```
### Recommended values
By passing these values when running:
```text
GITHUB_REPO=<Repository name containing the project>
GITHUB_USER=<GitHub username with acces to the repo>
DOCKERHUB_USER=<DockerHub user> 
DOCKERHUB_PASS=<DockerHub pass> 
```
you will meet the minimum requirements. Also you might need to modify some of the other default values.

## Running
```console
#!/usr/bin/env bash

docker run                                                                     \
  --rm                                                                         \
  -e GITHUB_REPO=$GITHUB_REPO                                                  \
  -e GITHUB_USER=$GITHUB_USER                                                  \
  -e DOCKERHUB_USER=$DOCKERHUB_USER                                            \
  -e DOCKERHUB_PASS=$DOCKERHUB_PASS                                            \
  danielo515/containerbuilder
```
Also a runme script is provided for convenience

## Authors
Danielo Rodríguez

## Acknowledgements
Thanks to Raúl Sánchez @rawmind0 for his invaluable guidance!
