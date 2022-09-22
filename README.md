# toolbox

[![build](https://github.com/pvorselaars/toolbox/actions/workflows/build.yml/badge.svg)](https://github.com/pvorselaars/toolbox/actions/workflows/build.yml)

A Debian based image containing various tools that I use on a daily basis. Enables a fresh development container everyday with only minimal persistence. 

## usage

Below a simple example of how this can be used.

```
$ tools()( 
  docker run --name toolbox -h toolbox -e USER=dev -v /var/run/docker.sock:/var/run/docker.sock -v toolbox:/home/dev/ --rm -it ghcr.io/pvorselaars/toolbox
  )
$ tools
dev@toolbox:~$
```

## tools

An non-exhaustive list of the binaries and scripts included in this image.

* gnupg
* git
* net-tools
* iproute2
* iputils
* netcat
* curl
* dnsutils
* tcpdump 
* iptables 
* mtr-tiny 
* azure-cli
* google-cloud-cli
* terraform
* nomad
* docker
* kubectl
* golang
* powershell
* jq
