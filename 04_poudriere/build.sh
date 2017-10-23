#/bin/sh
poudriere jail -u -j freebsd:11:x86:64
poudriere ports -u
poudriere bulk -j freebsd:11:x86:64 -f /usr/local/etc/poudriere.d/ports