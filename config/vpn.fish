#!/bin/fish

set --universal SURFKSHARK_URL "https://my.surfshark.com/vpn/api/v1/server/configurations"
set --universal SURFKSHARK_LOCATIONS "$HOME/.config/surfshark/locations"
set --universal SURFKSHARK_CREDENTIAL "$HOME/.config/surfshark/credentials.conf"

mkdir -p "$SURFKSHARK_LOCATIONS"

set TMP (mktemp) && curl -Lfso "$TMP" $SURFKSHARK_URL && unzip -oqq "$TMP" -d "$SURFKSHARK_LOCATIONS"

alias -s sf-sao "sudo openvpn --config $SURFKSHARK_LOCATIONS/br-sao.prod.surfshark.com_udp.ovpn --auth-user-pass $SURFKSHARK_CREDENTIAL"
alias -s sf-sao "sudo openvpn --config $SURFKSHARK_LOCATIONS/ca-tor.prod.surfshark.com_udp.ovpn --auth-user-pass $SURFKSHARK_CREDENTIAL"
alias -s sf-mia "sudo openvpn --config $SURFKSHARK_LOCATIONS/us-mia.prod.surfshark.com_udp.ovpn --auth-user-pass $SURFKSHARK_CREDENTIAL"
alias -s sf-nyc "sudo openvpn --config $SURFKSHARK_LOCATIONS/us-nyc.prod.surfshark.com_udp.ovpn --auth-user-pass $SURFKSHARK_CREDENTIAL"
