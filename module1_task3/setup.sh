#!/bin/bash
VERSION=0.109.0
apt-get update && apt-get install -y hugo make
make build
