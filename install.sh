#!/bin/bash

# Find the absolute path to the current project directory
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define the path to the user's desktop
DESKTOP_DIR="$HOME/Desktop"
TARGET_DESKTOP_FILE="$DESKTOP_DIR/YoutubePlay.desktop"

echo "Installing YoutubePlay shortcut..."

# Create/overwrite the .desktop file directly on the desktop with the correct paths
cat <<EOF > "$TARGET_DESKTOP_FILE"
[Desktop Entry]
Version=1.0
Type=Application
Name=YoutubePlay
Comment=Start local video player
Exec=$PROJECT_DIR/start.sh
Icon=$PROJECT_DIR/icon.png
Terminal=true
Categories=Utility;
EOF

# Grant executable permissions to the script and the desktop shortcut
chmod +x "$PROJECT_DIR/start.sh"
chmod +x "$TARGET_DESKTOP_FILE"

echo "Success! The shortcut has been created on your Desktop."
echo "Important: Right-click the icon on your Desktop and select 'Allow Launching'."

