#!/bin/sh
# Hook: called when gluetun vpn port changes.
# Args: $1=port $2=interface
# Customize to notify your app of the new port.
echo "[hook] gluetun port forwarded for $2: $1"

PORT="${1}"
QBIT_URL="http://localhost:6520"
QBIT_LOGIN_URL="${QBIT_URL}/api/v2/auth/login"
QBIT_SET_PREFERENCES_URL="${QBIT_URL}/api/v2/app/setPreferences"
API_KEY="get api key from qbittorrent ui"

wget -S -O- \
  --header="Authorization: Bearer ${API_KEY}" \
  --post-data="json={\"listen_port\": ${PORT}}" \
  "${QBIT_SET_PREFERENCES_URL}"
