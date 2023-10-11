#!/bin/bash

echo 'updating installed packages'
sudo yum update -y

echo 'install missing packages'
sudo yum install -y jq