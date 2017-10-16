ARG BUILD_FROM=hassioaddons/base-amd64
FROM ${BUILD_FROM}

# Copy root filesystem
COPY rootfs /

RUN \
    apk add --no-cache coreutils wget \
    && chmod a+x /run.sh

# Scrip to run after startup
CMD [ "/usr/bin/run.sh" ]

# Build arugments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Franck Nijhof <frenck@addons.community>" \
    org.label-schema.description="Example add-on for Hass.io" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="Hass.io example add-on for ${BUILD_ARCH}" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://addons.community" \
    org.label-schema.usage="https://github.com/hassio-addons/addon-example/tree/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/hassio-addons/addon-example" \
    org.label-schema.vendor="Community Hass.io Addons"