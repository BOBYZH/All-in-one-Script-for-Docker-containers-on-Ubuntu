#!/usr/bin/env bash

# Setup script for setting up a new ubuntu machine
echo "Starting All-in-one-Script to install"

## Use root without password prompt
echo "Use root without password"
sudo su

## Update packages
echo "Update packages"
apt update

## Install Docker
apt install docker.io
