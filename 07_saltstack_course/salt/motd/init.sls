Install a standardized MOTD:
  file.managed:
    - name: /etc/motd
    - source: salt://motd/files/motd
