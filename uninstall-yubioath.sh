#!/bin/bash

DIR="$HOME/opensource/yubico-authenticator"
URL=https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-latest-linux.tar.gz
FILENAME=yubico-auth-latest.tar.gz
OUTDIR=yubi-auth-files

sudo rm -f /usr/bin/yubioath-desktop
bash $DIR/$OUTDIR/desktop_integration.sh -u
sudo rm -rf $DIR/$OUTDIR
rm -f $DIR/$FILENAME
