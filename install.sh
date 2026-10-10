#!/usr/bin/env bash
set -e

PREFIX="${PREFIX:-/usr/local}"
BIN_DIR="${PREFIX}/bin"

echo "Installing Monologue to ${BIN_DIR}..."
sudo install -m 755 bin/monologue "${BIN_DIR}/monologue"

# Desktop entry
if [ -d "/usr/share/applications" ]; then
    echo "Installing desktop entry..."
    sudo install -m 644 monologue.desktop /usr/share/applications/monologue.desktop
fi

echo "✓ Monologue installed successfully! Run 'monologue' to start recording."
