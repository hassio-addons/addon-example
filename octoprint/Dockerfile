ARG BUILD_FROM=ghcr.io/hassio-addons/base/amd64:10.0.0
# version.sh
ARG OCTO_RELEASE=1.6.1
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Copy root filesystem
# COPY rootfs /
RUN rm /etc/cont-init.d/00-banner.sh
RUN rm /etc/cont-init.d/01-log-level.sh
RUN rm /etc/cont-finish.d/99-message.sh

# Setup base
RUN apk add --no-cache \
  coreutils=8.32-r2 \
  wget=1.21.1-r1

# Install python/pip
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3=3.9.5-r1 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache-dir --upgrade pip==21.1.3 setuptools==57.0.0

RUN apk add --no-cache \
  avrdude=6.3-r4 \
  alpine-sdk=1.0-r1 \
  cmake=3.20.3-r0 \
  curl=7.77.0-r1 \
  imagemagick=7.0.11.13-r0 \
  ffmpeg=4.4-r1 \
  fontconfig=2.13.1-r4 \
  g++=10.3.1_git20210424-r2 \
  git=2.32.0-r0 \
  haproxy=2.4.1-r0 \
  zlib-dev=1.2.11-r3 \
  protobuf-dev=3.15.7-r1 \
  jpeg-dev=9d-r1 \
  openssh-client-default=8.6_p1-r2 \
  xz=5.2.5-r0 \
  python3-dev=3.9.5-r1 \
  linux-headers=5.10.41-r0

# Install octoprint
RUN	curl -fsSLO --compressed --retry 3 --retry-delay 10 \
  "https://github.com/OctoPrint/OctoPrint/archive/refs/tags/${OCTO_RELEASE}.tar.gz" \
  && mkdir -p /opt/octoprint \
  && tar xzf "${OCTO_RELEASE}.tar.gz" --strip-components 1 -C /opt/octoprint --no-same-owner

WORKDIR /opt/octoprint
RUN pip install --no-cache-dir .
RUN mkdir -p /octoprint/octoprint /octoprint/plugins

# Install mjpg-streamer
RUN curl -fsSLO --compressed --retry 3 --retry-delay 10 \
  https://github.com/jacksonliam/mjpg-streamer/archive/master.tar.gz \
  && mkdir /mjpg \
  && tar xzf master.tar.gz -C /mjpg


WORKDIR /mjpg/mjpg-streamer-master/mjpg-streamer-experimental
RUN make
RUN make install

# Uncomment to enable webcam support. This ENV can be set after installation too
# ENV ENABLE_MJPG_STREAMER

# Copy services into s6 servicedir and set default ENV vars
COPY root /
ENV CAMERA_DEV /dev/video0
ENV MJPG_STREAMER_INPUT -n -r 640x480
ENV PIP_USER true
ENV PYTHONUSERBASE /octoprint/plugins
ENV PATH "${PYTHONUSERBASE}/bin:${PATH}"

# set WORKDIR
WORKDIR /octoprint

# port to access haproxy frontend
EXPOSE 80

VOLUME /octoprint

ENTRYPOINT ["/init"]

# Build arguments
ARG BUILD_ARCH=amd64
ARG BUILD_DATE=20210627
ARG BUILD_DESCRIPTION=testebuild
ARG BUILD_NAME=testename
ARG BUILD_REF=testeref
ARG BUILD_REPOSITORY=testerepo
ARG BUILD_VERSION=1.0

# Labels
LABEL \
  io.hass.name="${BUILD_NAME}" \
  io.hass.description="${BUILD_DESCRIPTION}" \
  io.hass.arch="${BUILD_ARCH}" \
  io.hass.type="addon" \
  io.hass.version=${BUILD_VERSION} \
  maintainer="Francisco Bischoff <franzbischoff@gmail.com>" \
  org.opencontainers.image.title="${BUILD_NAME}" \
  org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
  org.opencontainers.image.vendor="Home Assistant Community Add-ons" \
  org.opencontainers.image.authors="Francisco Bischoff <franzbischoff@gmail.com>" \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.url="https://addons.community" \
  org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
  org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
  org.opencontainers.image.created=${BUILD_DATE} \
  org.opencontainers.image.revision=${BUILD_REF} \
  org.opencontainers.image.version=${BUILD_VERSION}
