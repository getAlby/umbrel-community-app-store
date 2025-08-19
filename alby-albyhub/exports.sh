#!/bin/bash

# Check if Lightning Node app is installed and export required variables if so
installed_apps=$("${UMBREL_ROOT}/scripts/app" ls-installed)

if echo "$installed_apps" | grep --quiet 'lightning'; then
  export APP_ALBYHUB_LN_BACKEND="LND"
  export APP_ALBYHUB_LND_ADDRESS="${APP_LIGHTNING_NODE_IP}:${APP_LIGHTNING_NODE_GRPC_PORT}"
  export APP_ALBYHUB_LND_CERT_FILE="/lnd/tls.cert"
  export APP_ALBYHUB_LND_MACAROON_FILE="/lnd/data/chain/bitcoin/mainnet/admin.macaroon"
fi
