#!/bin/bash

# ANSI color codes for better output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Function to display error messages in red
error_msg() {
  echo -e "${RED}Error: $1${NC}"
}

# Function to display success messages in green
success_msg() {
  echo -e "${GREEN}$1${NC}"
}

# Function to display info messages in yellow
info_msg() {
  echo -e "${YELLOW}$1${NC}"
}

# Main script
info_msg "Creating a new React Native app..."

# Prompt user for app name
read -p "Enter the name of your app: " appname

# Check if app name is provided
if [ -z "$appname" ]; then
  error_msg "App name cannot be empty."
  exit 1
fi

# Install React Native CLI globally if not already installed
info_msg "Installing React Native CLI globally..."
sudo npm install -g react-native-cli

# Create React Native app
info_msg "Creating React Native app '$appname'..."
npx @react-native-community/cli@latest init "$appname"

# Navigate into the newly created app directory
cd "$appname"

# Display success message
success_msg ""
success_msg "React Native app '$appname' created successfully."
success_msg ""
success_msg "To get started:"
success_msg "1. Navigate into your app's directory: ${YELLOW}cd $appname${NC}"
success_msg "2. Start the Metro bundler: ${YELLOW}npx react-native start${NC}"
success_msg "3. Run your app on Android: ${YELLOW}npx react-native run-android${NC}"
success_msg "   Run your app on iOS: ${YELLOW}npx react-native run-ios${NC}"
success_msg ""
success_msg "Happy coding!"