#!/bin/bash
# Download the Public Square Analytics logo for use in generated graphics.
set -e
cd "$(dirname "$0")"
LOGO_URL="https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=768,fit=crop/AzGr9EB5xJFoy7Wx/publicsquare-v4.1-mk3D0goxayhGjJqP.png"
echo "Downloading logo..."
curl -fsSL "$LOGO_URL" -o publicsquare_logo.png
echo "Saved: $(pwd)/publicsquare_logo.png ($(wc -c < publicsquare_logo.png) bytes)"
echo
echo "(You can close this Terminal window.)"
