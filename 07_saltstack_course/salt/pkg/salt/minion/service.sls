Start the Salt minion service:
  service.running:
    - name: salt_minion
    - enable: True
