FROM bellstrand/docker-android:0.1.4

ENV NODEJS_VERSION=10.10.0
ENV CORDOVA_VERSION=8.0.0
ENV PATH=$PATH:/opt/node/bin
ENV CI=true

WORKDIR /opt/node

# Installs NodeJS
RUN apt-get update && apt-get install -y curl git ca-certificates --no-install-recommends && \
    curl -sL https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.gz | tar xz --strip-components=1

WORKDIR /tmp

# Installs Cordova
RUN npm i -g --unsafe-perm cordova@${CORDOVA_VERSION}

# Clean up
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
	apt-get autoremove -y && \
	apt-get clean

WORKDIR /app