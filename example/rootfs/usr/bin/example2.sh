#!/usr/bin/with-contenv bashio
# ==============================================================================
#
# Community Hass.io Add-ons: Example
#
# Example add-on for Hass.io.
#
# ------------------------------------------------------------------------------
main() {
    bashio::log.trace "${FUNCNAME[0]}"

    while true; do
        echo "Second Script Output"
        sleep 10
    done
}
main "$@"
