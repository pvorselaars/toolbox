FROM debian:testing-slim

RUN export DEBIAN_FRONTEND=noninteractive

# Install system components
RUN apt update
RUN apt install -y curl gnupg apt-transport-https lsb-release

# Adding additional repositories
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/google.gpg add -
RUN echo "deb [signed-by=/usr/share/keyrings/google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" > /etc/apt/sources.list.d/google-cloud-sdk.list

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key --keyring /usr/share/keyrings/microsoft.gpg add -
RUN echo "deb [signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/microsoft-debian-bullseye-prod bullseye main" > /etc/apt/sources.list.d/microsoft.list

RUN curl https://apt.releases.hashicorp.com/gpg | apt-key --keyring /usr/share/keyrings/hashicorp.gpg add -
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" > /etc/apt/sources.list.d/hashicorp.list

RUN apt update

# Install tools
RUN apt install --no-install-recommends -y curl gnupg git azure-cli google-cloud-cli golang terraform nomad jq powershell kubectl

CMD ["bash"]
