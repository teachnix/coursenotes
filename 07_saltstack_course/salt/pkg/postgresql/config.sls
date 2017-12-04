Create a dummy file containing PostgreSQL secrets:
  file.managed:
    - name: /usr/local/etc/postgresql-secrets.conf
    - source: salt://pkg/postgresql/files/secrets.conf
    - template: jinja
