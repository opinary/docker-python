FROM python:3.6

# install google-cloud-sdk
RUN wget -O google-cloud-sdk.tar.gz https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-154.0.1-linux-x86_64.tar.gz
RUN tar xf google-cloud-sdk.tar.gz && rm google-cloud-sdk.tar.gz
RUN /google-cloud-sdk/install.sh
RUN /google-cloud-sdk/bin/gcloud --quiet components update
ENV PATH="/google-cloud-sdk/bin:${PATH}"

# install docker client
ENV DOCKER_VER="17.03.0-ce"
RUN curl -L -o /tmp/docker-${DOCKER_VER}.tgz https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VER}.tgz
RUN tar -xz -C /tmp -f /tmp/docker-${DOCKER_VER}.tgz
RUN mv /tmp/docker/* /usr/bin

# instal python dependencies
# python dependencies for automation services
COPY requirements.txt requirements.txt
RUN pip3 install --upgrade pip setuptools
RUN pip3 install -r requirements.txt
