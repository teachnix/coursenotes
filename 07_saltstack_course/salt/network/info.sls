Create a file with networking information using grains:
  file.managed:
    - name: /tmp/info
    - source: salt://network/files/info
    - template: jinja