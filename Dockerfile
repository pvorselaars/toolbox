FROM debian:testing-slim

RUN apt update

# Azure CLI
RUN apt update
RUN apt install -y azure-cli

CMD ["bash"]
