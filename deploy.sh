#!/usr/bin/env bash
set -euo pipefail

RG="adti-rg"
TEMPLATE="simple-storage.bicep"   # your file from the question
DEPLOY_NAME="deploy-$(date +%Y%m%d-%H%M%S)"

# 0) Login & subscription (skip if already logged in)
# az login
# az account set --subscription "<SUBSCRIPTION_ID_OR_NAME>"

# 1) Ensure the RG exists 
az group show -n "$RG" >/dev/null

# 3) Validate 
az deployment group validate \
  --resource-group "$RG" \
  --name "$DEPLOY_NAME" \
  --template-file "$TEMPLATE"

# 4) Deploy
az deployment group create \
  --resource-group "$RG" \
  --name "$DEPLOY_NAME" \
  --template-file "$TEMPLATE"
