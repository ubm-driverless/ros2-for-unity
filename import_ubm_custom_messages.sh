#!/bin/bash

set -euo pipefail

SCRIPTPATH=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

UBM_FSAE_REPO_URL="${UBM_FSAE_REPO_URL:-https://github.com/ubm-driverless/ubm-fsae.git}"
UBM_FSAE_REPO_REF="${UBM_FSAE_REPO_REF:-main}"
UBM_FSAE_REPO_PATH="${UBM_FSAE_REPO_PATH:-}"

SOURCE_DIR="$SCRIPTPATH/src/ubm-fsae-message-source"
DEST_DIR="$SCRIPTPATH/src/ros2cs/src/custom_messages"

MESSAGE_PACKAGES=(
  camera_msgs
  fsae_msgs
  landmark_msgs
  vcu_msgs
  asu_diagnostic_msgs
)

mkdir -p "$DEST_DIR"

if [ -n "$UBM_FSAE_REPO_PATH" ]; then
  SOURCE_DIR="$UBM_FSAE_REPO_PATH"
else
  rm -rf "$SOURCE_DIR"
  git clone --depth 1 --branch "$UBM_FSAE_REPO_REF" "$UBM_FSAE_REPO_URL" "$SOURCE_DIR"
fi

for package in "${MESSAGE_PACKAGES[@]}"; do
  if [ ! -d "$SOURCE_DIR/$package" ]; then
    echo "Missing expected UBM message package: $SOURCE_DIR/$package" >&2
    exit 1
  fi

  rm -rf "$DEST_DIR/$package"
  cp -a "$SOURCE_DIR/$package" "$DEST_DIR/$package"
done

echo "Imported UBM custom message packages into $DEST_DIR:"
printf ' - %s\n' "${MESSAGE_PACKAGES[@]}"
