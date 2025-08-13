#!/bin/bash

# Check if Lightning Node app is installed and export required variables if so
# The Lightning Node app is optional and not listed in the `required` field of the umbrel-app.yml file, so we need to do this for compatibility with umbrelOS >=1.3 where only exports of required apps are sourced.
installed_apps=$("${UMBREL_ROOT}/scripts/app" ls-installed)

if echo "$installed_apps" | grep --quiet 'lightning'; then
  # LND is available, export LND-specific variables
  export APP_ALBY_LIGHTNING_AVAILABLE="true"
  export APP_ALBY_LN_BACKEND_TYPE="LND"
  export APP_ALBY_LIGHTNING_NODE_IP="10.21.21.9"
  export APP_ALBY_LIGHTNING_NODE_GRPC_PORT="10009"
  export APP_ALBY_LIGHTNING_NODE_REST_PORT="8080"
else
  # LND is not available, will use LDK backend
  export APP_ALBY_LIGHTNING_AVAILABLE="false"
  export APP_ALBY_LN_BACKEND_TYPE="LDK"
fi
