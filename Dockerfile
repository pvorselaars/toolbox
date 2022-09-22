FROM debian:testing-slim
RUN export DEBIAN_FRONTEND=noninteractive
RUN apt update

# Common tools
RUN apt install --no-install-recommends -y curl gnupg git

# Azure CLI
RUN apt install --no-install-recommends -y azure-cli

# Google Cloud CLI
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" > /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN apt update
RUN apt install --no-install-recommends -y google-cloud-cli

# Golang
RUN apt install --no-install-recommends -y golang

CMD ["bash"]
