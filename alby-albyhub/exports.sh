#!/bin/bash

export APP_ALBYHUB_LN_BACKEND="LDK"
export APP_ALBYHUB_LND_ADDRESS=""

# Checks for lightning(LND) installation in Umbrel, just like the mempool app does.
echo "Checking for lightning installation..."
installed_apps=$("${UMBREL_ROOT}/scripts/app" ls-installed)
echo "Installed apps: '$installed_apps'"

if echo "$installed_apps" | grep --quiet 'lightning'; then
  echo "Lightning detected! Setting LND backend"
  export APP_ALBYHUB_LN_BACKEND="LND"
  export APP_ALBYHUB_LND_ADDRESS="10.21.21.9:10009"
else
  echo "No lightning detected, using LDK backend"
  export APP_ALBYHUB_LN_BACKEND="LDK"
  export APP_ALBYHUB_LND_ADDRESS=""
fi

echo "Final configuration:"
echo "  APP_ALBYHUB_LN_BACKEND: $APP_ALBYHUB_LN_BACKEND"
echo "  APP_ALBYHUB_LND_ADDRESS: $APP_ALBYHUB_LND_ADDRESS"
