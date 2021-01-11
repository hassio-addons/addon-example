ARG BUILD_FROM
FROM $BUILD_FROM

SHELL ["/bin/bash", "-o", "pipefail", "-c"]


ARG BUILD_ARCH

#Install Prereqs
RUN apt-get update && apt-get install -y curl wget && apt-get install -y software-properties-common && apt-get install -y unzip && apt-get -y install tzdata

RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && dpkg -i packages-microsoft-prod.deb

#Install .NET and SDK Runtimeon Linux

RUN wget https://dot.net/v1/dotnet-install.sh && chmod +x dotnet-install.sh && /bin/bash ./dotnet-install.sh -c 3.1 && rm -rf dotnet-install.sh


#Install AgentDVR dependicies
RUN apt-get update
RUN add-apt-repository ppa:jonathonf/ffmpeg-4 && apt-get install -y ffmpeg
RUN apt-get update  && apt-get install -y libtbb-dev libc6-dev gss-ntlmssp && apt-get install -y libgdiplus && \
    apt install -y multiarch-support && \
    wget http://security.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo8_1.5.2-0ubuntu5.18.04.4_${BUILD_ARCH}.deb && dpkg -i libjpeg-turbo8_1.5.2-0ubuntu5.18.04.4_${BUILD_ARCH}.deb && \
    wget http://fr.archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8_8c-2ubuntu8_${BUILD_ARCH}.deb && dpkg -i libjpeg8_8c-2ubuntu8_${BUILD_ARCH}.deb

#Download and unpack AgentDVR
RUN if [ "${FILE_LOCATION_SET}" = "true" ]; then \
    echo "Downloading from specific location: ${FILE_LOCATION}" && \
    wget -c ${FILE_LOCATION} -O agent.zip; \
    else \
    #Get latest instead
    echo "Downloading latest" && \
    wget -c https://ispyfiles.azureedge.net/downloads/Agent_Linux64_3_0_7_0.zip -O agent.zip; \
    fi && \
    unzip agent.zip -d /agent && \
    rm agent.zip

# Main UI port
EXPOSE 8090

# TURN server port
EXPOSE 3478/udp

# TURN server UDP port range
EXPOSE 50000-50010/udp

# Data volumes
COPY rootfs /

# Build arguments
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="AgentDVR" \
    io.hass.description="Addon to run AgentDVR with Home Assistant" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Joshua Peterson <https://github.com/Jpeterson37>" \
    org.opencontainers.image.title="AgentDVR" \
    org.opencontainers.image.description="Addon to run AgentDVR with Home Assistant" \
    org.opencontainers.image.vendor="Home Assistant Community Add-ons" \
    org.opencontainers.image.authors="Joshua Peterson <https://github.com/Jpeterson37>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://addons.community" \
    org.opencontainers.image.source="https://github.com/hassio-addons/addon-agentdvr" \
    org.opencontainers.image.documentation="https://github.com/hassio-addons/addon-agentdvr/blob/master/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}

