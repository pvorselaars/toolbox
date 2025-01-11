FROM alpine:latest

RUN apk update
RUN apk add git gnupg curl bind-tools powershell kubectl dasel dog asciinema skim navi openssh stow httpie go slides neovim

ENV PATH=$PATH:/root/.local/bin
ENV ENV=/root/.profile

COPY entry.sh /entry.sh

WORKDIR /root

ENTRYPOINT [ "/entry.sh" ]
