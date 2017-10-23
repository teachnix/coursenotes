#!/bin/sh

# Create keys to sign out packages
mkdir -p /usr/local/etc/ssl/{keys,certs}
chmod 0600 /usr/local/etc/ssl/keys
openssl genrsa -out /usr/local/etc/ssl/keys/poudriere.key 4096
openssl rsa -in /usr/local/etc/ssl/keys/poudriere.key -pubout -out /usr/local/etc/ssl/certs/poudriere.cert

# Create a build repository for 11.1-RELEASE
poudriere jail -c -j freebsd:11:x86:64 -v 11.1-RELEASE
poudriere ports -c