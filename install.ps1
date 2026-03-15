# Urano CLI Installer for Windows
$VERSION = "1.0.2"
$REPO = "your-username/your-repo-name" # TODO: Update with actual public repo
$BINARY_NAME = "uranodesktop-win.exe"

Write-Host "🚀 Installing Urano CLI v$VERSION..." -ForegroundColor Cyan

$OS = "win"
$URL = "https://github.com/$REPO/releases/download/v$VERSION/$BINARY_NAME"
$DEST = "$HOME\AppData\Local\Microsoft\WindowsApps\uranodesktop.exe"

Write-Host "📥 Downloading from $URL..."
Invoke-WebRequest -Uri $URL -OutFile $DEST

Write-Host "✅ Urano CLI installed successfully! Type 'uranodesktop' to start." -ForegroundColor Green
