#!/bin/bash

# Define absolute paths (ensure trailing slashes)
VAULT_DIR="/home/mate/Documents/60_ttrpg/61_active-campaigns/strahdowdark/public_quartz/"
QUARTZ_DIR="./content/"

# Ensure the target directory exists
mkdir -p "$QUARTZ_DIR"

# Mirror files
rsync -av --delete "$VAULT_DIR" "$QUARTZ_DIR"

# Build, commit, and push to GitHub
npx quartz sync
