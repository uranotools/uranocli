# Urano CLI Installer for Windows
$VERSION = "1.0.3"
$REPO = "uranotools/uranocli"
$BINARY_NAME = "uranocli-win.exe"

Write-Host "🚀 Installing Urano CLI v$VERSION..." -ForegroundColor Cyan

$OS = "win"
$URL = "https://github.com/$REPO/releases/download/v$VERSION/$BINARY_NAME"
$DEST = "$HOME\AppData\Local\Microsoft\WindowsApps\uranocli.exe"

Write-Host "📥 Downloading from $URL..."
Invoke-WebRequest -Uri $URL -OutFile $DEST

Write-Host "✅ Urano CLI installed successfully! Type 'uranocli' to start." -ForegroundColor Green
