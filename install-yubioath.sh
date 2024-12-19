#!/bin/bash

DIR="$HOME/opensource/yubico-authenticator"
URL=https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-latest-linux.tar.gz
FILENAME=yubico-auth-latest.tar.gz
OUTDIR=yubi-auth-files

pkill -f yubico

mkdir -p $DIR/$OUTDIR
curl -L $URL -o $DIR/$FILENAME
tar --overwrite -xzf $DIR/$FILENAME -C $DIR/$OUTDIR --strip-components 1
sudo chown root:root $DIR/$OUTDIR/authenticator
sudo chmod 755 $DIR/$OUTDIR/authenticator
sudo ln -s $DIR/$OUTDIR/authenticator /usr/bin/yubioath-desktop
bash $DIR/$OUTDIR/desktop_integration.sh -i
