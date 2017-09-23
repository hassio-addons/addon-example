ARG BUILD_FROM=hassioaddons/base-amd64
FROM ${BUILD_FROM}

# Copy root filesystem
COPY rootfs /

RUN \
    apk add --no-cache coreutils wget \
    && chmod a+x /run.sh

CMD [ "/run.sh" ]

# Build arugments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_DOC_URL
ARG BUILD_GIT_URL
ARG BUILD_MAINTAINER
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_URL
ARG BUILD_VENDOR
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="${BUILD_MAINTAINER}" \
    org.label-schema.description="${BUILD_DESCRIPTION}" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="${BUILD_NAME} for ${BUILD_ARCH}" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="${BUILD_URL}" \
    org.label-schema.usage="${BUILD_DOC_URL}" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="${BUILD_GIT_URL}" \
    org.label-schema.vendor="${BUILD_VENDOR}"