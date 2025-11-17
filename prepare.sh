#!/bin/sh
# Prepare the environment for building, assumes a new alpine-chroot, or docker github action container.
# This is a one-time thing doesn't need to be run each build.

echo "Adding packages"
apk add --no-cache abuild ethtool build-base
echo "Addding user biff"
adduser -D biff
addgroup biff abuild
echo "Changing ownership of workspace"
chown -R biff:biff ${GITHUB_WORKSPACE:-$(pwd)}
mkdir -p /home/biff/.abuild
echo "Copying private key from root"
cp /root/.abuild/signing.key /home/biff/.abuild/.
chown biff:biff /home/biff/.abuild/signing.key
chmod 600 /home/biff/.abuild/signing.key
echo "Writing key to build config"
echo 'PACKAGER_PRIVKEY="/home/biff/.abuild/signing.key"' > /home/biff/.abuild/abuild.conf
chown biff:biff /home/biff/.abuild/abuild.conf
chmod 644 /home/biff/.abuild/abuild.conf

echo "Getting public key from sources"
cp .abuild/bifferos.key.pub /home/biff/.abuild/
echo "Trusting public key on build machine"
cp .abuild/bifferos.key.pub /etc/apk/keys/
chmod 644 /etc/apk/keys/signing.key.pub

chown biff:biff /home/biff/.abuild/signing.key.pub
chmod 644 /home/biff/.abuild/signing.key.pub
