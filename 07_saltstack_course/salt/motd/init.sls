Install a standardized MOTD:
  file.managed:
    - name: /etc/motd
    - source: salt://motd/files/motd

{% if grains['os'] = 'FreeBSD' %}
Remove the fortune package:
  file.absent:
     - name: /usr/bin/fortune
{% endif %}
