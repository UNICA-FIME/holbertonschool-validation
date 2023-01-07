#!/usr/bin/bash
VERSION=0.109.0
apt-get update && apt-get install -y make wget
wget https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz
tar -xvf hugo_${VERSION}_Linux-64bit.tar.gz hugo
mv hugo /usr/local/bin/
rm -rf hugo_${VERSION}_Linux-64bit.tar.gz

make build
