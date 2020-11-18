#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: AgentDVR
# Configures the AgentDVR
# ==============================================================================

# Ensures the data of the AgentDVR is store outside the container and initializes the file structure
if ! bashio::fs.directory_exists '/config/agentdvr/Media/XML'; then
    bashio::log.info 'Initializing AgentDVR for first time run...'
    mkdir -p /config/agentdvr/Media/XML
    mkdir -p /agent/Media
    bashio::log.info 'Creating symbolic link to /config/agentdvr for configuration storage...'
    ln -s /config/agentdvr/Media/XML/ /agent/Media/
    ~/.dotnet/dotnet /agent/Agent.dll &
    while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' 127.0.0.1:8090)" != "200" ]]; do sleep 1; done
    kill $!
    bashio::log.info 'Updating agent media storage to /media/AgentDVR/...'
    #Setup recording location
    if ! bashio::fs.directory_exists '/media/AgentDVR'; then
        mkdir -p /media/AgentDVR
    fi
    #Change recording location to /media
    sed -i 's/\/agent\/Media\/WebServerRoot\/Media\//\/media\/AgentDVR\//g' /agent/Media/XML/config.xml
    bashio::log.info 'Initialization Complete...'
    exit 0
fi


#Link /config to agentdvr configuration location
#rm -fr /agent/Media/XML
mkdir -p /agent/Media
ln -s /config/agentdvr/Media/XML/ /agent/Media/


