FROM python:3.6

# install google-cloud-sdk
ENV GCSDK_VER="364.0.0"
RUN wget -O google-cloud-sdk.tar.gz https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GCSDK_VER}-linux-x86_64.tar.gz
RUN tar xf google-cloud-sdk.tar.gz && rm google-cloud-sdk.tar.gz
RUN /google-cloud-sdk/install.sh
ENV PATH="/google-cloud-sdk/bin:${PATH}"

# install docker client
ENV DOCKER_VER="17.03.0-ce"
RUN curl -L -o /tmp/docker-${DOCKER_VER}.tgz https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VER}.tgz
RUN tar -xz -C /tmp -f /tmp/docker-${DOCKER_VER}.tgz
RUN mv /tmp/docker/* /usr/bin
