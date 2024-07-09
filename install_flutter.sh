#!/bin/bash

# Define Flutter version to install
FLUTTER_VERSION="3.19.5"

# Define Flutter home
FLUTTER_HOME="/opt/buildhome/flutter"

# Download and install Flutter
if [ ! -d "$FLUTTER_HOME" ]; then
  echo "Installing Flutter..."
  wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_$FLUTTER_VERSION-stable.tar.xz
  tar xf flutter_linux_$FLUTTER_VERSION-stable.tar.xz -C /opt/buildhome
  rm flutter_linux_$FLUTTER_VERSION-stable.tar.xz
fi

# Export Flutter binary path
export PATH="$FLUTTER_HOME/flutter/bin:$PATH"

# Run Flutter doctor to ensure everything is set up
flutter doctor
