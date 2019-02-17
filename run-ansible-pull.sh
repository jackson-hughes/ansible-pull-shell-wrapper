#!/usr/bin/env bash

set -e

GIT_CLONE_DIR="/tmp/ansible-code"

# Parse arguments
GIT_REPO="$1"
GIT_REPO_BRANCH="$2"

rm -rf "$GIT_CLONE_DIR"

git clone "$1" --branch "$2" "$GIT_CLONE_DIR"

cd "$GIT_CLONE_DIR"

# Install role dependencies via Galaxy
ansible-galaxy install -r requirements.yml

# Execute ansible against localhost based on declared .yml
ansible-playbook "$HOSTNAME.yml"
