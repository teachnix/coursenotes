Install the OpenSSH configuration file:
  file.managed:
   - name: /etc/ssh/sshd_config
   - source: salt://pkg/openssh/files/sshd_config-{{ salt['pillar.get']('openssh:config') }}
   - template: jinja
