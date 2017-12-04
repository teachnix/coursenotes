Change the FreeBSD software repository to the latest versions:
  file.managed:
    - name: /etc/pkg/FreeBSD.conf
    - source: salt://repo/freebsd/files/FreeBSD.conf-latest

Refresh the package repo upon changing the software repo:
  cmd.run:
    - name: pkg update
    - onchanges:
      - Change the FreeBSD software repository to the latest versions
