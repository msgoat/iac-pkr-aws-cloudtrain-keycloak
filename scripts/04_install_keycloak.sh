#!/bin/bash
# ----------------------------------------------------------------------------
# 04_install_keycloak.sh
# ----------------------------------------------------------------------------
# Installs Keycloak.
# ----------------------------------------------------------------------------

set -ue

echo "Installing some prerequisites for keycloak"
sudo dnf install -y unzip

export KEYCLOAK_HOME=/opt/keycloak
export KEYCLOAK_PACKAGE_NAME=keycloak-$KEYCLOAK_VERSION.zip
export KEYCLOAK_BIN=$KEYCLOAK_HOME
export KEYCLOAK_DATA=$KEYCLOAK_HOME/data

echo "Create Keycloak directories"
sudo mkdir -p $KEYCLOAK_BIN
sudo mkdir -p $KEYCLOAK_DATA

echo "Create Keycloak runtime user"
sudo adduser keycloak --user-group --system

echo "Download and unpack Keycloak package using Keycloak version $KEYCLOAK_VERSION"
cd /tmp
curl -L -o $KEYCLOAK_PACKAGE_NAME https://github.com/keycloak/keycloak/releases/download/$KEYCLOAK_VERSION/$KEYCLOAK_PACKAGE_NAME
unzip $KEYCLOAK_PACKAGE_NAME
sudo mv keycloak-$KEYCLOAK_VERSION/* $KEYCLOAK_BIN/
sudo ls -al $KEYCLOAK_BIN

echo "Allow keycloak user to access keycloak binaries"
sudo chown -R keycloak:keycloak $KEYCLOAK_HOME
