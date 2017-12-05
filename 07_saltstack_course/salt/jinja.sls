Write a file to all minions:
  file.managed:
    - name: /tmp/file-all
    - contents: all

{% if grains['os'] == 'FreeBSD' %}
Write a file to only FreeBSD minions:
  file.managed:
    - name: /tmp/file-freebsd
    - contents: freebsd
{% endif %}

{% if grains['os'] != 'FreeBSD' %}
Write a file to everything except FreeBSD minions:
  file.managed:
    - name: /tmp/file-not-freebsd
    - contents: not-freebsd
{% endif %}