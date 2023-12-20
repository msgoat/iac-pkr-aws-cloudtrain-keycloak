#!/bin/bash
# ----------------------------------------------------------------------------
# 03_install_java17.sh
# ----------------------------------------------------------------------------
# Installs Java 17 represented by Amazon Corretto distribution.
# ----------------------------------------------------------------------------

echo 'Installing Java 17'
sudo dnf install java-17-amazon-corretto-headless -y

echo 'Checking Java installation'
java -version