FROM debian:testing-slim

RUN apt update

# Common tools
RUN apt install -y curl gnupg

# Azure CLI
RUN apt install -y azure-cli

# Google Cloud CLI
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" > /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN apt update
RUN apt install google-cloud-cli

CMD ["bash"]
