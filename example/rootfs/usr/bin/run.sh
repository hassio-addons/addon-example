#!/usr/bin/with-contenv bash
# ==============================================================================
#
# Community Hass.io Add-ons: Example
#
# Example add-on for Hass.io.
# This add-on displays a random quote every 5 seconds.
#
# ==============================================================================
set -o errexit  # Exit script when a command exits with non-zero status
set -o errtrace # Exit on error inside any functions or sub-shells
set -o nounset  # Exit script on use of an undefined variable
set -o pipefail # Return exit status of the last command in the pipe that failed

# shellcheck disable=SC1091
source /usr/lib/hassio-addons/base.sh

# ------------------------------------------------------------------------------
# Get a random quote from quotationspage.com
#
# Arguments:
#   None
# Returns:
#   None
# ------------------------------------------------------------------------------
get_quote_online() {
    local number
    local html
    local quote

    number=$(( ( RANDOM % 999 )  + 1 ))
    html=$(wget -q -O - "http://www.quotationspage.com/quote/${number}.html")

    quote=$(grep -e "<dt>" -e "</dd>" <<< "${html}" \
        | awk -F'[<>]' '{ 
            if($2 ~ /dt/)
                { print $3 } 
            else if($4 ~ /b/)
                { print "-- " $7 "  n(" $19 ")"} 
        }'
    )

    echo "${quote}"
}

# ------------------------------------------------------------------------------
# Get a random quote from a prefined set of quotes
#
# Arguments:
#   None
# Returns:
#   None
# ------------------------------------------------------------------------------
get_quote_offline() {
    local -i number
    local -a quotes

    quotes+=("Ever tried. Ever failed. No matter. Try Again. Fail again. Fail better.\n -Samuel Beckett")
    quotes+=("Never give up, for that is just the place and time that the tide will turn.\n -Harriet Beecher Stowe")
    quotes+=("Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time.\n -Thomas A. Edison")
    quotes+=("Life isn't about getting and having, it's about giving and being.\n -Kevin Kruse")
    quotes+=("Strive not to be a success, but rather to be of value.\n -Albert Einstein")
    quotes+=("You miss 100% of the shots you don't take.\n -Wayne Gretzky")
    quotes+=("People who are unable to motivate themselves must be content with mediocrity, no matter how impressive their other talents. \n -Andrew Carnegie")
    quotes+=("Design is not just what it looks like and feels like. Design is how it works.\n -Steve Jobs")
    quotes+=("Only those who dare to fail greatly can ever achieve greatly.\n -Robert F. Kennedy")
    quotes+=("All our dreams can come true, if we have the courage to pursue them.\n -Walt Disney")
    quotes+=("Success consists of going from failure to failure without loss of enthusiasm.\n -Winston Churchill")

    number=$(( ( RANDOM % 11 )  + 1 ))
    echo "${quotes[$number]}"
}

# ------------------------------------------------------------------------------
# Displays a random quote
#
# Arguments:
#   None
# Returns:
#   None
# -----------------------------------------------------------------------------
display_quote() {
    local quote
    local timestamp

    if wget -q --spider http://www.quotationspage.com; then
        quote=$(get_quote_online)
    else
        hass.log.notice \
            'Could not connect to quotationspage.com, using an offline quote'
        quote=$(get_quote_offline)
    fi 

    quote=$(sed 's/n()//g' <<< "${quote}" | xargs -0 echo | fmt -40)
    timestamp=$(date +"%T")

    hass.log.info "Random quote loaded @ ${timestamp}"
    echo -e "${quote}"
}

# ==============================================================================
# RUN LOGIC
# ------------------------------------------------------------------------------
# Globals:
#   EX_OK
# Arguments:
#   None
# Returns:
#   None
# ------------------------------------------------------------------------------
main() {
    # Display a quote every 5 seconds
    while true; do
        display_quote
        sleep 5
    done
}
main "$@"
