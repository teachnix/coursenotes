include:
  - pkg.openssh.config

Start the OpenSSH server daemon:
  service.running:
    - name: sshd
    - enable: True
    - watch:
      - sls: pkg.openssh.config
