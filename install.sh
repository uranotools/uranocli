#!/bin/bash
# Urano CLI Installer for Mac/Linux
VERSION="1.0.3"
REPO="uranotools/uranocli"
BINARY_NAME="uranocli"

echo "🚀 Installing Urano CLI v$VERSION..."

OS_TYPE="$(uname -s | tr '[:upper:]' '[:lower:]')"
case "$OS_TYPE" in
  linux*)   OS="linux" ;;
  darwin*)  OS="macos" ;;
  *)        echo "❌ OS not supported: $OS_TYPE"; exit 1 ;;
esac

URL="https://github.com/$REPO/releases/download/v$VERSION/$BINARY_NAME-$OS"
DEST="/usr/local/bin/$BINARY_NAME"

echo "📥 Downloading from $URL..."
sudo curl -L "$URL" -o "$DEST"
sudo chmod +x "$DEST"

echo "✅ Urano CLI installed successfully! Type '$BINARY_NAME' to start."
