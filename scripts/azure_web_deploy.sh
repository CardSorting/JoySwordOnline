#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WEB="$ROOT/web"
PACKAGE_ROOT="${TMPDIR:-/tmp}/joysword-web-package"
ZIP_PATH="${TMPDIR:-/tmp}/joysword-web.zip"
RESOURCE_GROUP="${AZURE_RESOURCE_GROUP:-joysword-prod-rg}"
APP_NAME="${AZURE_WEB_APP_NAME:-joysword-web-be6c7ac407}"
export NEXT_PUBLIC_SITE_URL="${NEXT_PUBLIC_SITE_URL:-https://${APP_NAME}.azurewebsites.net}"

cd "$WEB"
node node_modules/next/dist/bin/next build

rm -rf "$PACKAGE_ROOT" "$ZIP_PATH"
mkdir -p "$PACKAGE_ROOT/.next" "$PACKAGE_ROOT/scripts"
cp -R .next/standalone/. "$PACKAGE_ROOT/"
cp -R .next/static "$PACKAGE_ROOT/.next/static"
cp -R public "$PACKAGE_ROOT/public"
cp -R migrations "$PACKAGE_ROOT/migrations"
cp scripts/migrate.mjs "$PACKAGE_ROOT/scripts/migrate.mjs"

cd "$PACKAGE_ROOT"
zip -qry "$ZIP_PATH" .

az webapp deploy \
  --resource-group "$RESOURCE_GROUP" \
  --name "$APP_NAME" \
  --src-path "$ZIP_PATH" \
  --type zip \
  --clean true \
  --restart true

az webapp show \
  --resource-group "$RESOURCE_GROUP" \
  --name "$APP_NAME" \
  --query '{url:defaultHostName,state:state}' \
  --output table
