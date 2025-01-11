# toolbox

[![build](https://github.com/pvorselaars/toolbox/actions/workflows/build.yml/badge.svg)](https://github.com/pvorselaars/toolbox/actions/workflows/build.yml)

A Alpine based image containing various tools. Enables a fresh development container everyday with only minimal persistence. 

## usage

Some simple examples of how this can be used assuming you have Docker installed.

### without persistence

```
$ tools()( 
  docker run -n toolbox -e USER=dev --rm -it ghcr.io/pvorselaars/toolbox
  )
$ tools
root@toolbox:~$
```

### with persistence
```
$ tools()( 
  docker attach toolbox || docker run --name toolbox -e USER=dev -v toolbox:/home/dev/ -it ghcr.io/pvorselaars/toolbox
  )
$ tools
root@toolbox:~$
```

## tools

An non-exhaustive list of the binaries and scripts included in this image.

* busybox
* git
* gnupg
* bind-tools
* curl
* tcpdump 
* kubectl
* golang
* powershell
* dasel
* dog
* asciinema
* httpie
* neovim
