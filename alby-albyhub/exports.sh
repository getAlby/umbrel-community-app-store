export APP_ALBYHUB_LN_BACKEND="LDK"

# Checks for lightning(LND) installation in Umbrel, just like the mempool app does.
installed_apps=$("${UMBREL_ROOT}/scripts/app" ls-installed)

if echo "$installed_apps" | grep --quiet 'lightning'; then
  export APP_ALBYHUB_LN_BACKEND="LND"
  export APP_ALBYHUB_LND_ADDRESS="10.21.21.9:10009"
fi
