#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: Example
#
# Example add-on for Hass.io.
# ------------------------------------------------------------------------------
main() {
    bashio::log.trace "${FUNCNAME[0]}"

    while true; do
        echo "Second Script Output"
        sleep 10
    done
}
main "$@"
